using System.Globalization;
using System.Security.Cryptography;
using System.Text;

internal static class AssetTool
{
    private const int HeaderSize = 16;
    private const int BankSize = 0x4000;
    private const int BankCount = 32;
    private const int ExpectedSize = HeaderSize + (BankSize * BankCount);
    private const string ExpectedSha256 = "373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A";

    public static int Export(string[] args)
    {
        RequireArgumentCount(args, 4, "asset-export <rom> <project-root> <output-directory>");
        byte[] rom = ReadExactRom(args[1]);
        string projectRoot = Path.GetFullPath(args[2]);
        string outputDirectory = Path.GetFullPath(args[3]);
        IReadOnlyList<AssetRange> ranges = LoadRanges(projectRoot);
        ExportRanges(rom, outputDirectory, ranges);
        TextDecoder.WriteReports(Path.Combine(outputDirectory, "text", "decoded"), TextDecoder.Decode(rom));
        Console.WriteLine($"exported {ranges.Count} lossless asset slices to {outputDirectory}");
        return 0;
    }

    public static int Import(string[] args)
    {
        RequireArgumentCount(args, 5, "asset-import <base-rom> <project-root> <input-directory> <output-rom>");
        byte[] rom = ReadExactRom(args[1]);
        string projectRoot = Path.GetFullPath(args[2]);
        string inputDirectory = Path.GetFullPath(args[3]);
        string outputPath = Path.GetFullPath(args[4]);
        IReadOnlyList<AssetRange> ranges = LoadRanges(projectRoot);

        foreach (AssetRange range in ranges)
        {
            string path = AssetPath(inputDirectory, range);
            byte[] data = File.ReadAllBytes(path);
            if (data.Length != range.Length)
            {
                throw new InvalidDataException(
                    $"asset {range.Id} must be {range.Length} bytes, got {data.Length}");
            }

            data.CopyTo(rom, RomOffset(range));
        }

        Directory.CreateDirectory(Path.GetDirectoryName(outputPath)!);
        File.WriteAllBytes(outputPath, rom);
        Console.WriteLine($"imported {ranges.Count} lossless asset slices into {outputPath}");
        string sha256 = Convert.ToHexString(SHA256.HashData(rom));
        Console.WriteLine($"output SHA-256: {sha256}");
        Console.WriteLine($"exact reference match: {(sha256 == ExpectedSha256 ? "yes" : "no (asset content changed)")}");
        return 0;
    }

    public static int Verify(string[] args)
    {
        RequireArgumentCount(args, 3, "asset-verify <rom> <project-root>");
        byte[] rom = ReadExactRom(args[1]);
        string projectRoot = Path.GetFullPath(args[2]);
        IReadOnlyList<AssetRange> ranges = LoadRanges(projectRoot);
        string temporaryDirectory = Path.Combine(Path.GetTempPath(), $"dw4-assets-{Guid.NewGuid():N}");

        try
        {
            ExportRanges(rom, temporaryDirectory, ranges);
            byte[] rebuilt = (byte[])rom.Clone();
            foreach (AssetRange range in ranges)
            {
                byte[] data = File.ReadAllBytes(AssetPath(temporaryDirectory, range));
                data.CopyTo(rebuilt, RomOffset(range));
            }

            string rebuiltSha256 = Convert.ToHexString(SHA256.HashData(rebuilt));
            if (!rom.AsSpan().SequenceEqual(rebuilt) || rebuiltSha256 != ExpectedSha256)
            {
                throw new InvalidDataException(
                    $"asset round trip changed the ROM: expected {ExpectedSha256}, got {rebuiltSha256}");
            }

            foreach (IGrouping<string, AssetRange> category in ranges.GroupBy(range => range.Category).OrderBy(group => group.Key))
            {
                Console.WriteLine(
                    $"{category.Key}: {category.Count()} slices, {category.Sum(range => range.Length)} bytes");
            }
            Console.WriteLine($"asset round trip exact reference match: yes ({ranges.Count} slices)");
            return 0;
        }
        finally
        {
            if (Directory.Exists(temporaryDirectory))
            {
                Directory.Delete(temporaryDirectory, true);
            }
        }
    }

    private static void ExportRanges(
        ReadOnlySpan<byte> rom,
        string outputDirectory,
        IReadOnlyList<AssetRange> ranges)
    {
        Directory.CreateDirectory(outputDirectory);
        StringBuilder manifest = new();
        manifest.AppendLine("Id\tCategory\tBank\tStart\tEndExclusive\tLength\tSHA256\tFile\tNote");
        foreach (AssetRange range in ranges)
        {
            string path = AssetPath(outputDirectory, range);
            Directory.CreateDirectory(Path.GetDirectoryName(path)!);
            ReadOnlySpan<byte> data = rom.Slice(RomOffset(range), range.Length);
            File.WriteAllBytes(path, data);
            manifest.Append(range.Id).Append('\t')
                .Append(range.Category).Append('\t')
                .Append(range.Bank.ToString("X2", CultureInfo.InvariantCulture)).Append('\t')
                .Append(range.Start.ToString("X4", CultureInfo.InvariantCulture)).Append('\t')
                .Append(range.EndExclusive.ToString("X4", CultureInfo.InvariantCulture)).Append('\t')
                .Append(range.Length.ToString(CultureInfo.InvariantCulture)).Append('\t')
                .Append(Convert.ToHexString(SHA256.HashData(data))).Append('\t')
                .Append(Path.GetRelativePath(outputDirectory, path).Replace('\\', '/')).Append('\t')
                .AppendLine(range.Note);
        }
        File.WriteAllText(
            Path.Combine(outputDirectory, "asset-manifest.tsv"),
            manifest.ToString(),
            new UTF8Encoding(false));
    }

    private static IReadOnlyList<AssetRange> LoadRanges(string projectRoot)
    {
        string path = Path.Combine(projectRoot, "config", "asset-ranges.tsv");
        List<AssetRange> ranges = [];
        HashSet<string> ids = new(StringComparer.OrdinalIgnoreCase);
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 6)
            {
                throw new InvalidDataException($"invalid asset range: {line}");
            }

            int bank = int.Parse(columns[2], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int start = int.Parse(columns[3], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int endExclusive = int.Parse(columns[4], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int cpuBase = CpuBase(bank);
            if (!ids.Add(columns[0]) || bank is < 0 or >= BankCount || start < cpuBase ||
                endExclusive > cpuBase + BankSize || start >= endExclusive ||
                !IsSafeName(columns[0]) || !IsSafeName(columns[1]))
            {
                throw new InvalidDataException($"invalid asset range bounds or identifier: {line}");
            }

            ranges.Add(new AssetRange(columns[0], columns[1], bank, start, endExclusive, columns[5]));
        }

        string[] requiredCategories = ["text", "maps", "graphics", "palettes", "audio"];
        if (requiredCategories.Any(category => !ranges.Any(range => range.Category == category)))
        {
            throw new InvalidDataException("asset-ranges.tsv must cover text, maps, graphics, palettes, and audio");
        }
        return ranges;
    }

    private static byte[] ReadExactRom(string path)
    {
        byte[] rom = File.ReadAllBytes(path);
        string sha256 = Convert.ToHexString(SHA256.HashData(rom));
        if (rom.Length != ExpectedSize || sha256 != ExpectedSha256)
        {
            throw new InvalidDataException(
                $"base ROM must be the exact {ExpectedSize}-byte reference image with SHA-256 {ExpectedSha256}");
        }
        return rom;
    }

    private static string AssetPath(string root, AssetRange range) =>
        Path.Combine(root, range.Category, range.Id + ".bin");

    private static int RomOffset(AssetRange range) =>
        HeaderSize + (range.Bank * BankSize) + range.Start - CpuBase(range.Bank);

    private static int CpuBase(int bank) => (bank & 0x0F) == 0x0F ? 0xC000 : 0x8000;

    private static bool IsSafeName(string value) =>
        value.Length > 0 && value.All(character =>
            char.IsAsciiLetterOrDigit(character) || character is '-' or '_');

    private static void RequireArgumentCount(string[] args, int expected, string usage)
    {
        if (args.Length != expected)
        {
            throw new ArgumentException($"usage: {usage}");
        }
    }

    private sealed record AssetRange(
        string Id,
        string Category,
        int Bank,
        int Start,
        int EndExclusive,
        string Note)
    {
        public int Length => EndExclusive - Start;
    }
}