using System.Diagnostics;
using System.Globalization;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;

internal static class Program
{
    private const int HeaderSize = 16;
    private const int PrgBankSize = 0x4000;
    private const int PrgBankCount = 32;
    private const int ExpectedSize = HeaderSize + (PrgBankSize * PrgBankCount);
    private const string ExpectedSha256 = "373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A";
    private static readonly byte[] ExpectedHeader =
    [
        0x4E, 0x45, 0x53, 0x1A, 0x20, 0x00, 0x12, 0x08,
        0x00, 0x00, 0x70, 0x07, 0x00, 0x00, 0x00, 0x01
    ];

    private static int Main(string[] args)
    {
        try
        {
            return args.Length == 0 ? Usage() : args[0].ToLowerInvariant() switch
            {
                "extract" => Extract(args),
                "inspect" => Inspect(args),
                "verify" => Verify(args),
                _ => Usage()
            };
        }
        catch (Exception exception)
        {
            Console.Error.WriteLine($"error: {exception.Message}");
            return 1;
        }
    }

    private static int Usage()
    {
        Console.WriteLine("Dw4Tool - Dragon Warrior IV ROM disassembly and verification");
        Console.WriteLine("  Dw4Tool inspect <rom>");
        Console.WriteLine("  Dw4Tool extract <rom> <project-root>");
        Console.WriteLine("  Dw4Tool verify <rom> [--exact]");
        return 2;
    }

    private static int Inspect(string[] args)
    {
        RequireArgumentCount(args, 2, "inspect <rom>");
        byte[] rom = File.ReadAllBytes(args[1]);
        RomFacts facts = ValidateStructure(rom);
        PrintFacts(args[1], rom, facts);
        return 0;
    }

    private static int Verify(string[] args)
    {
        if (args.Length is < 2 or > 3)
        {
            throw new ArgumentException("usage: verify <rom> [--exact]");
        }

        bool exact = args.Length == 3 && args[2].Equals("--exact", StringComparison.OrdinalIgnoreCase);
        if (args.Length == 3 && !exact)
        {
            throw new ArgumentException("the only supported verify option is --exact");
        }

        byte[] rom = File.ReadAllBytes(args[1]);
        RomFacts facts = ValidateStructure(rom);
        string sha256 = Convert.ToHexString(SHA256.HashData(rom));
        if (exact && !sha256.Equals(ExpectedSha256, StringComparison.Ordinal))
        {
            throw new InvalidDataException($"SHA-256 mismatch: expected {ExpectedSha256}, got {sha256}");
        }

        Console.WriteLine($"verified: {Path.GetFullPath(args[1])}");
        Console.WriteLine($"size: {rom.Length} bytes; mapper: {facts.Mapper}; PRG: {facts.PrgSize} bytes; SHA-256: {sha256}");
        if (exact)
        {
            Console.WriteLine("exact reference match: yes");
        }

        return 0;
    }

    private static int Extract(string[] args)
    {
        RequireArgumentCount(args, 3, "extract <rom> <project-root>");
        string romPath = Path.GetFullPath(args[1]);
        string projectRoot = Path.GetFullPath(args[2]);
        byte[] rom = File.ReadAllBytes(romPath);
        _ = ValidateStructure(rom);

        string sha256 = Convert.ToHexString(SHA256.HashData(rom));
        if (!sha256.Equals(ExpectedSha256, StringComparison.Ordinal))
        {
            throw new InvalidDataException($"source ROM SHA-256 mismatch: expected {ExpectedSha256}, got {sha256}");
        }

        Dictionary<int, List<BankLabel>> labels = LoadLabels(Path.Combine(projectRoot, "config", "labels.tsv"));
        IReadOnlyList<TextGroup> textGroups = TextDecoder.Decode(rom);
        Dictionary<string, IReadOnlyList<TextGroup>> textAnnotations = AddTextLabels(labels, textGroups);
        List<CodeExclusion> codeExclusions = LoadCodeExclusions(
            Path.Combine(projectRoot, "config", "code-exclusions.tsv"));
        List<ContentRange> contentRanges = LoadContentRanges(
            Path.Combine(projectRoot, "config", "content-ranges.tsv"));
        List<BankClassification> bankClassifications = LoadBankClassifications(
            Path.Combine(projectRoot, "config", "bank-classifications.tsv"));
        Dictionary<ushort, int> brkOperandCounts = BuildBrkOperandCounts(rom, contentRanges);
        List<CodeSeed> codeSeeds = LoadCodeSeeds(Path.Combine(projectRoot, "config", "code-seeds.tsv"));
        codeSeeds.AddRange(LoadEntryTableSeeds(
            Path.Combine(projectRoot, "config", "code-entry-tables.tsv"), rom, codeExclusions));
        codeSeeds.AddRange(LoadGhidraCodeSeeds(
            Path.Combine(projectRoot, "analysis", "ghidra-code-ranges.tsv"), rom, codeExclusions));
        codeSeeds.AddRange(LoadFceuxCodeSeeds(
            Path.Combine(projectRoot, "analysis", "fceux-exec.tsv"), rom, codeExclusions));
        Dictionary<int, BankAnalysis> analyses = CodeAnalyzer.Analyze(
            rom.AsMemory(HeaderSize), codeSeeds, codeExclusions, brkOperandCounts);
        Dictionary<int, List<BankLabel>> effectiveLabels = BuildEffectiveLabels(labels, analyses);
        Dictionary<int, string> constants = LoadConstants(Path.Combine(projectRoot, "src", "constants"));
        string bankDirectory = Path.Combine(projectRoot, "src", "banks");
        string workDirectory = Path.Combine(projectRoot, "work", "da65");
        string da65Path = Path.Combine(projectRoot, "tools", "da65", "da65.exe");
        if (!File.Exists(da65Path))
        {
            throw new FileNotFoundException("the project-local da65 executable was not found", da65Path);
        }

        Directory.CreateDirectory(bankDirectory);
        Directory.CreateDirectory(workDirectory);

        for (int bank = 0; bank < PrgBankCount; bank++)
        {
            ReadOnlySpan<byte> data = rom.AsSpan(HeaderSize + (bank * PrgBankSize), PrgBankSize);
            string rawPath = Path.Combine(workDirectory, $"bank_{bank:X2}.bin");
            string infoPath = Path.Combine(workDirectory, $"bank_{bank:X2}.info");
            string da65OutputPath = Path.Combine(workDirectory, $"bank_{bank:X2}.s");
            File.WriteAllBytes(rawPath, data);
            File.WriteAllText(
                infoPath,
                RenderDa65Info(bank, effectiveLabels, constants, analyses[bank]),
                new UTF8Encoding(false));
            RunDa65(da65Path, rawPath, infoPath, da65OutputPath);

            string text = ConvertDa65Output(bank, da65OutputPath, textAnnotations);
            string path = Path.Combine(bankDirectory, $"bank_{bank:X2}.asm");
            File.WriteAllText(path, text, new UTF8Encoding(false));
            Console.WriteLine($"wrote {Path.GetRelativePath(projectRoot, path)}");
        }

        WriteCodeReport(Path.Combine(projectRoot, "analysis", "code-report.txt"), codeSeeds, analyses);
        WriteClassificationReport(
            Path.Combine(projectRoot, "analysis", "classification-report.txt"),
            bankClassifications,
            contentRanges,
            analyses);
        TextDecoder.WriteReports(Path.Combine(projectRoot, "analysis"), textGroups);
        Console.WriteLine($"extracted {PrgBankCount} PRG banks from {romPath}");
        return 0;
    }

    private static RomFacts ValidateStructure(ReadOnlySpan<byte> rom)
    {
        if (rom.Length != ExpectedSize)
        {
            throw new InvalidDataException($"expected {ExpectedSize} bytes, got {rom.Length}");
        }

        if (!rom[..HeaderSize].SequenceEqual(ExpectedHeader))
        {
            throw new InvalidDataException("the 16-byte NES 2.0 header does not match the reference ROM");
        }

        int mapper = (rom[6] >> 4) | (rom[7] & 0xF0) | ((rom[8] & 0x0F) << 8);
        int prgSize = rom[4] * PrgBankSize;
        int chrSize = rom[5] * 0x2000;
        return new RomFacts(mapper, prgSize, chrSize, (rom[6] & 0x02) != 0, (rom[6] & 0x01) != 0);
    }

    private static void PrintFacts(string path, byte[] rom, RomFacts facts)
    {
        int vectorOffset = HeaderSize + facts.PrgSize - 6;
        ushort nmi = BitConverter.ToUInt16(rom, vectorOffset);
        ushort reset = BitConverter.ToUInt16(rom, vectorOffset + 2);
        ushort irq = BitConverter.ToUInt16(rom, vectorOffset + 4);
        Console.WriteLine($"path: {Path.GetFullPath(path)}");
        Console.WriteLine($"size: {rom.Length} bytes");
        Console.WriteLine($"SHA-256: {Convert.ToHexString(SHA256.HashData(rom))}");
        Console.WriteLine($"header: {Convert.ToHexString(rom.AsSpan(0, HeaderSize))}");
        Console.WriteLine($"format: NES 2.0; mapper: {facts.Mapper}; PRG: {facts.PrgSize}; CHR: {facts.ChrSize}");
        Console.WriteLine($"battery: {facts.Battery}; header mirroring bit: {(facts.VerticalMirroring ? "vertical" : "horizontal")}");
        Console.WriteLine($"vectors: NMI=${nmi:X4}, RESET=${reset:X4}, IRQ/BRK=${irq:X4}");
    }

    private static Dictionary<int, List<BankLabel>> LoadLabels(string path)
    {
        Dictionary<int, List<BankLabel>> labels = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 5)
            {
                throw new InvalidDataException($"invalid labels.tsv row: {line}");
            }

            int bank = int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int address = int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            BankLabel label = new(address, columns[2], columns[3], columns[4]);
            if (!labels.TryGetValue(bank, out List<BankLabel>? bankLabels))
            {
                bankLabels = [];
                labels.Add(bank, bankLabels);
            }

            bankLabels.Add(label);
        }

        foreach (List<BankLabel> bankLabels in labels.Values)
        {
            bankLabels.Sort((left, right) => left.Address.CompareTo(right.Address));
        }

        return labels;
    }

    private static Dictionary<int, List<BankLabel>> BuildEffectiveLabels(
        Dictionary<int, List<BankLabel>> labels,
        IReadOnlyDictionary<int, BankAnalysis> analyses)
    {
        Dictionary<int, List<BankLabel>> result = Enumerable.Range(0, PrgBankCount)
            .ToDictionary(bank => bank, bank => labels.TryGetValue(bank, out List<BankLabel>? bankLabels)
                ? new List<BankLabel>(bankLabels)
                : []);

        foreach ((int bank, BankAnalysis analysis) in analyses)
        {
            HashSet<int> labeledAddresses = result[bank].Select(label => label.Address).ToHashSet();
            foreach (int address in analysis.LabelAddresses
                .Where(address => analysis.Instructions.ContainsKey(address - CodeAnalyzer.CpuBase(bank)))
                .Order())
            {
                if (labeledAddresses.Add(address))
                {
                    result[bank].Add(new BankLabel(
                        address,
                        $"Bank{bank:X2}_Code_{address:X4}",
                        "Code",
                        "Verified entry point or control-flow target"));
                }
            }

            result[bank].Sort((left, right) => left.Address.CompareTo(right.Address));
        }

        return result;
    }

    private static Dictionary<string, IReadOnlyList<TextGroup>> AddTextLabels(
        Dictionary<int, List<BankLabel>> labels,
        IReadOnlyList<TextGroup> groups)
    {
        Dictionary<string, IReadOnlyList<TextGroup>> annotations = [];
        foreach (IGrouping<(int Bank, int Address), TextGroup> location in groups
            .GroupBy(group => (group.Bank, group.Address)))
        {
            List<TextGroup> aliases = location.OrderBy(group => group.Number).ToList();
            string name = $"Bank{location.Key.Bank:X2}_TextGroup_{aliases[0].Number:X2}";
            string groupNumbers = string.Join(", ", aliases.Select(group => $"${group.Number:X2}"));
            if (!labels.TryGetValue(location.Key.Bank, out List<BankLabel>? bankLabels))
            {
                bankLabels = [];
                labels.Add(location.Key.Bank, bankLabels);
            }
            if (!bankLabels.Any(label => label.Address == location.Key.Address))
            {
                bankLabels.Add(new BankLabel(
                    location.Key.Address,
                    name,
                    "CompressedText",
                    $"Huffman text group(s) {groupNumbers}"));
            }
            else
            {
                name = bankLabels.First(label => label.Address == location.Key.Address).Name;
            }
            annotations[name] = aliases;
        }

        foreach (List<BankLabel> bankLabels in labels.Values)
        {
            bankLabels.Sort((left, right) => left.Address.CompareTo(right.Address));
        }
        return annotations;
    }

    private static Dictionary<int, string> LoadConstants(string directory)
    {
        Dictionary<int, string> constants = [];
        foreach (string path in Directory.EnumerateFiles(directory, "*.inc").Order())
        {
            foreach (string sourceLine in File.ReadLines(path))
            {
                string line = sourceLine.Split(';', 2)[0];
                int equals = line.IndexOf('=');
                if (equals < 1)
                {
                    continue;
                }

                string name = line[..equals].Trim();
                string value = line[(equals + 1)..].Trim();
                if (value.StartsWith('$') &&
                    int.TryParse(value[1..], NumberStyles.HexNumber, CultureInfo.InvariantCulture, out int address))
                {
                    constants.TryAdd(address, name);
                }
            }
        }

        return constants;
    }

    private static List<CodeSeed> LoadCodeSeeds(string path)
    {
        List<CodeSeed> seeds = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 5)
            {
                throw new InvalidDataException($"invalid code-seeds.tsv row: {line}");
            }

            seeds.Add(new CodeSeed(
                int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                columns[2] == "-" ? null : int.Parse(columns[2], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                columns[3],
                columns[4]));
        }

        return seeds;
    }

    private static List<CodeExclusion> LoadCodeExclusions(string path)
    {
        List<CodeExclusion> exclusions = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 5)
            {
                throw new InvalidDataException($"invalid code exclusion: {line}");
            }

            exclusions.Add(new CodeExclusion(
                int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                int.Parse(columns[2], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                columns[4]));
        }

        return exclusions;
    }

    private static List<ContentRange> LoadContentRanges(string path)
    {
        List<ContentRange> ranges = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 6)
            {
                throw new InvalidDataException($"invalid content range: {line}");
            }

            int bank = int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int start = int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int endExclusive = int.Parse(columns[2], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int cpuBase = CodeAnalyzer.CpuBase(bank);
            if (bank is < 0 or >= PrgBankCount || start < cpuBase ||
                endExclusive > cpuBase + PrgBankSize || start >= endExclusive)
            {
                throw new InvalidDataException($"invalid content range bounds: {line}");
            }

            ranges.Add(new ContentRange(
                bank,
                start,
                endExclusive,
                columns[3],
                columns[4],
                columns[5]));
        }

        return ranges;
    }

    private static Dictionary<ushort, int> BuildBrkOperandCounts(
        ReadOnlySpan<byte> rom,
        IReadOnlyList<ContentRange> contentRanges)
    {
        Dictionary<ushort, int> counts = [];
        foreach (ContentRange range in contentRanges.Where(range =>
            range.Category.Equals("InlineServiceOperands", StringComparison.Ordinal)))
        {
            int operandCount = range.EndExclusive - range.Start;
            int cpuBase = CodeAnalyzer.CpuBase(range.Bank);
            int brkAddress = range.Start - 1;
            int romOffset = HeaderSize + (range.Bank * PrgBankSize) + brkAddress - cpuBase;
            if (operandCount is < 2 or > 3 || romOffset < HeaderSize || rom[romOffset] != 0x00)
            {
                throw new InvalidDataException(
                    $"invalid inline BRK operand range at bank ${range.Bank:X2}:${range.Start:X4}-${range.EndExclusive - 1:X4}");
            }

            ushort service = (ushort)((rom[romOffset + 1] << 8) | rom[romOffset + 2]);
            if (counts.TryGetValue(service, out int existing) && existing != operandCount)
            {
                throw new InvalidDataException(
                    $"conflicting operand counts for BRK service ${service:X4}: {existing} and {operandCount}");
            }

            counts[service] = operandCount;
        }

        return counts;
    }

    private static List<BankClassification> LoadBankClassifications(string path)
    {
        List<BankClassification> classifications = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 4)
            {
                throw new InvalidDataException($"invalid bank classification: {line}");
            }
            classifications.Add(new BankClassification(
                int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                columns[1],
                columns[2],
                columns[3]));
        }

        int[] banks = classifications.Select(item => item.Bank).Order().ToArray();
        if (banks.Length != PrgBankCount || !banks.SequenceEqual(Enumerable.Range(0, PrgBankCount)))
        {
            throw new InvalidDataException("bank-classifications.tsv must contain each physical bank exactly once");
        }
        if (classifications.Any(item => !item.Confidence.Equals("Verified", StringComparison.Ordinal)))
        {
            throw new InvalidDataException("all dominant bank classifications must be Verified");
        }
        return classifications;
    }

    private static List<CodeSeed> LoadEntryTableSeeds(
        string path,
        ReadOnlySpan<byte> rom,
        IReadOnlyList<CodeExclusion> exclusions)
    {
        List<CodeSeed> seeds = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 5)
            {
                throw new InvalidDataException($"invalid code entry table: {line}");
            }

            int bank = int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int start = int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int endExclusive = int.Parse(columns[2], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int cpuBase = CodeAnalyzer.CpuBase(bank);
            if (start < cpuBase || endExclusive > cpuBase + PrgBankSize || ((endExclusive - start) & 1) != 0)
            {
                throw new InvalidDataException($"invalid code entry table bounds: {line}");
            }

            for (int address = start; address < endExclusive; address += 2)
            {
                int romOffset = HeaderSize + (bank * PrgBankSize) + address - cpuBase;
                int target = rom[romOffset] | (rom[romOffset + 1] << 8);
                if (target < cpuBase || target >= cpuBase + PrgBankSize)
                {
                    continue;
                }
                if (exclusions.Any(item =>
                    item.Bank == bank && target >= item.Start && target < item.EndExclusive))
                {
                    continue;
                }
                seeds.Add(new CodeSeed(
                    bank,
                    target,
                    null,
                    "Entry pointer table",
                    $"Pointer at ${address:X4}: {columns[4]}"));
            }
        }

        return seeds;
    }

    private static List<CodeSeed> LoadGhidraCodeSeeds(
        string path,
        ReadOnlySpan<byte> rom,
        IReadOnlyList<CodeExclusion> exclusions)
    {
        List<CodeSeed> seeds = [];
        if (!File.Exists(path))
        {
            return seeds;
        }

        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 5)
            {
                throw new InvalidDataException($"invalid Ghidra code range: {line}");
            }

            int bank = int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int rangeStart = int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int endExclusive = int.Parse(columns[2], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            CodeExclusion? exclusion = exclusions.FirstOrDefault(item =>
                item.Bank == bank && rangeStart < item.EndExclusive && endExclusive > item.Start);
            if (exclusion is not null)
            {
                Console.WriteLine(
                    $"ignored excluded Ghidra range bank ${bank:X2}:${rangeStart:X4}-${endExclusive - 1:X4}: {exclusion.Reason}");
                continue;
            }

            int cpuBase = CodeAnalyzer.CpuBase(bank);
            int address = rangeStart;
            List<DecodedInstruction> instructions = [];
            while (address < endExclusive)
            {
                int romOffset = HeaderSize + (bank * PrgBankSize) + address - cpuBase;
                Opcode? opcode = OpcodeTable.Get(rom[romOffset]);
                if (opcode is null || address + opcode.Size > endExclusive)
                {
                    throw new InvalidDataException(
                        $"Ghidra range bank ${bank:X2}:${address:X4}-${endExclusive - 1:X4} is not valid official 6502 code");
                }

                byte operand1 = opcode.Size >= 2 ? rom[romOffset + 1] : (byte)0;
                byte operand2 = opcode.Size == 3 ? rom[romOffset + 2] : (byte)0;
                instructions.Add(new DecodedInstruction(bank, address, opcode, operand1, operand2));
                address += opcode.Size;
            }

            HashSet<int> instructionStarts = instructions.Select(instruction => instruction.Address).ToHashSet();
            bool hasInteriorTarget = instructions.Any(instruction =>
                instruction.Target is int target &&
                target >= rangeStart &&
                target < endExclusive &&
                !instructionStarts.Contains(target));
            if (hasInteriorTarget)
            {
                Console.WriteLine(
                    $"ignored conflicting Ghidra range bank ${bank:X2}:${rangeStart:X4}-${endExclusive - 1:X4}");
                continue;
            }

            foreach (DecodedInstruction instruction in instructions)
            {
                seeds.Add(new CodeSeed(
                    bank,
                    instruction.Address,
                    endExclusive,
                    "Ghidra headless",
                    columns[4],
                    IsEntryPoint: false));
            }
        }

        return seeds;
    }

    private static List<CodeSeed> LoadFceuxCodeSeeds(
        string path,
        ReadOnlySpan<byte> rom,
        IReadOnlyList<CodeExclusion> exclusions)
    {
        List<CodeSeed> seeds = [];
        if (!File.Exists(path))
        {
            return seeds;
        }

        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 2)
            {
                throw new InvalidDataException($"invalid FCEUX execution record: {line}");
            }

            int bank = int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int address = int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture);
            int cpuBase = CodeAnalyzer.CpuBase(bank);
            if (bank is < 0 or >= PrgBankCount || address < cpuBase || address >= cpuBase + PrgBankSize)
            {
                throw new InvalidDataException($"FCEUX execution address is outside bank ${bank:X2}: ${address:X4}");
            }
            if (exclusions.Any(item =>
                item.Bank == bank && address >= item.Start && address < item.EndExclusive))
            {
                continue;
            }

            int romOffset = HeaderSize + (bank * PrgBankSize) + address - cpuBase;
            Opcode? opcode = OpcodeTable.Get(rom[romOffset]);
            if (opcode is null || address + opcode.Size > cpuBase + PrgBankSize)
            {
                throw new InvalidDataException(
                    $"FCEUX observed unsupported opcode ${rom[romOffset]:X2} at bank ${bank:X2}:${address:X4}");
            }

            seeds.Add(new CodeSeed(
                bank,
                address,
                address + opcode.Size,
                "FCEUX runtime",
                "Executed during bounded deterministic trace",
                FollowTargets: false,
                IsEntryPoint: false));
        }

        return seeds;
    }

    private static string RenderDa65Info(
        int bank,
        IReadOnlyDictionary<int, List<BankLabel>> allLabels,
        IReadOnlyDictionary<int, string> constants,
        BankAnalysis analysis)
    {
        int cpuBase = CodeAnalyzer.CpuBase(bank);
        bool[] codeBytes = new bool[PrgBankSize];
        foreach (DecodedInstruction instruction in analysis.Instructions.Values)
        {
            for (int index = 0; index < instruction.Opcode.Size; index++)
            {
                codeBytes[instruction.Offset + index] = true;
            }
        }

        StringBuilder info = new();
        info.AppendLine("global {");
        info.AppendLine("    inputoffs $0000;");
        info.AppendLine("    inputsize $4000;");
        info.AppendLine($"    startaddr ${cpuBase:X4};");
        info.AppendLine("    cpu \"6502\";");
        info.AppendLine("    comments 4;");
        info.AppendLine("    labelbreak 0;");
        info.AppendLine("};");
        info.AppendLine();

        Dictionary<int, string> visibleLabels = [];
        foreach (BankLabel label in allLabels[bank])
        {
            visibleLabels.TryAdd(label.Address, label.Name);
        }

        int fixedBank = bank < 0x10 ? 0x0F : 0x1F;
        if (bank != fixedBank)
        {
            foreach (BankLabel label in allLabels[fixedBank])
            {
                visibleLabels.TryAdd(label.Address, label.Name);
            }
        }

        foreach ((int address, string name) in constants)
        {
            if (address < 0x8000)
            {
                visibleLabels.TryAdd(address, name);
            }
        }

        foreach ((int address, string name) in visibleLabels.OrderBy(item => item.Key))
        {
            info.AppendLine($"label {{ addr ${address:X4}; name \"{name}\"; }};");
        }

        info.AppendLine();
        int offset = 0;
        while (offset < PrgBankSize)
        {
            bool isCode = codeBytes[offset];
            int end = offset;
            while (end + 1 < PrgBankSize && codeBytes[end + 1] == isCode)
            {
                end++;
            }

            info.AppendLine(
                $"range {{ start ${cpuBase + offset:X4}; end ${cpuBase + end:X4}; type {(isCode ? "Code" : "ByteTable")}; }};");
            offset = end + 1;
        }

        return info.ToString();
    }

    private static void RunDa65(string executable, string input, string info, string output)
    {
        ProcessStartInfo startInfo = new()
        {
            FileName = executable,
            UseShellExecute = false,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            CreateNoWindow = true
        };
        startInfo.ArgumentList.Add("--multi-pass");
        startInfo.ArgumentList.Add("-i");
        startInfo.ArgumentList.Add(info);
        startInfo.ArgumentList.Add("-o");
        startInfo.ArgumentList.Add(output);
        startInfo.ArgumentList.Add(input);

        using Process process = Process.Start(startInfo)
            ?? throw new InvalidOperationException("failed to start da65");
        string standardOutput = process.StandardOutput.ReadToEnd();
        string standardError = process.StandardError.ReadToEnd();
        process.WaitForExit();
        if (process.ExitCode != 0)
        {
            throw new InvalidOperationException(
                $"da65 failed for {Path.GetFileName(input)} with exit code {process.ExitCode}: " +
                standardError.Trim());
        }

        if (!string.IsNullOrWhiteSpace(standardOutput))
        {
            Console.Write(standardOutput);
        }
    }

    private static string ConvertDa65Output(
        int bank,
        string path,
        IReadOnlyDictionary<string, IReadOnlyList<TextGroup>> textAnnotations)
    {
        int cpuBase = CodeAnalyzer.CpuBase(bank);
        int fileStart = HeaderSize + (bank * PrgBankSize);
        StringBuilder output = new();
        output.AppendLine($"; PRG bank ${bank:X2}: ROM file ${fileStart:X6}-${fileStart + PrgBankSize - 1:X6}");
        output.AppendLine($"; CPU window ${cpuBase:X4}-${cpuBase + PrgBankSize - 1:X4}");
        output.AppendLine("; Disassembled by project-local da65 using generated code/data ranges.");
        output.AppendLine();
        output.AppendLine($"base ${cpuBase:X4}");
        output.AppendLine($"Bank{bank:X2}_Start:");

        foreach (string sourceLine in File.ReadLines(path))
        {
            string trimmed = sourceLine.Trim();
            Match interiorAssignment = Regex.Match(
                sourceLine,
                @"^\s*(?<name>[A-Za-z_][A-Za-z0-9_]*)\s*:=\s*\*\s*(?<offset>[+-]\s*[^;]+)?\s*$");
            if (interiorAssignment.Success)
            {
                string offset = interiorAssignment.Groups["offset"].Value.Trim();
                output.AppendLine($"{interiorAssignment.Groups["name"].Value} = ${offset}");
                continue;
            }

            if (trimmed.Length == 0 ||
                trimmed.StartsWith("; da65", StringComparison.Ordinal) ||
                trimmed.StartsWith("; Created:", StringComparison.Ordinal) ||
                trimmed.StartsWith("; Input file:", StringComparison.Ordinal) ||
                trimmed.StartsWith("; Page:", StringComparison.Ordinal) ||
                trimmed.StartsWith(".setcpu", StringComparison.OrdinalIgnoreCase) ||
                trimmed.Contains(":=", StringComparison.Ordinal) ||
                Regex.IsMatch(sourceLine, @"^\s*L[0-9A-F]{4}:\s*$"))
            {
                continue;
            }

            if (trimmed.EndsWith(':') &&
                textAnnotations.TryGetValue(trimmed[..^1], out IReadOnlyList<TextGroup>? groups))
            {
                string aliases = string.Join(", ", groups.Select(group => $"${group.Number:X2}"));
                output.AppendLine($"; Huffman-compressed text group(s): {aliases}");
                for (int index = 0; index < 32; index++)
                {
                    TextMessage primary = groups[0].Messages[index];
                    string ids = string.Join('/', groups.Select(group => $"${group.Messages[index].Id:X4}"));
                    output.AppendLine($"; Text {ids}: {primary.Text}");
                }
            }

            string converted = Regex.Replace(sourceLine, @"^(\s*)\.byte(\s+)", "$1db$2", RegexOptions.IgnoreCase);
            converted = Regex.Replace(converted, @"^(\s*)\.word(\s+)", "$1dw$2", RegexOptions.IgnoreCase);
            converted = ReplaceAutomaticLabels(converted);
            output.AppendLine(converted.TrimEnd());
        }

        output.AppendLine($"Bank{bank:X2}_End:");
        return output.ToString();
    }

    private static string ReplaceAutomaticLabels(string line)
    {
        Match byteComment = Regex.Match(line, @";\s*[0-9A-F]{4}\s+(?<opcode>[0-9A-F]{2})\b");
        Opcode? opcode = byteComment.Success
            ? OpcodeTable.Get(byte.Parse(byteComment.Groups["opcode"].Value, NumberStyles.HexNumber, CultureInfo.InvariantCulture))
            : null;
        bool zeroPageOperand = opcode?.Mode is
            AddressingMode.ZeroPage or
            AddressingMode.ZeroPageX or
            AddressingMode.ZeroPageY or
            AddressingMode.IndexedIndirect or
            AddressingMode.IndirectIndexed;

        return Regex.Replace(
            line,
            @"\bL(?<address>[0-9A-F]{4})\b",
            match =>
            {
                int address = int.Parse(
                    match.Groups["address"].Value,
                    NumberStyles.HexNumber,
                    CultureInfo.InvariantCulture);
                return zeroPageOperand && address < 0x100
                    ? $"${address:X2}"
                    : $"${address:X4}";
            });
    }

    private static string RenderBank(
        int bank,
        ReadOnlySpan<byte> data,
        IReadOnlyDictionary<int, List<BankLabel>> allLabels,
        IReadOnlyDictionary<int, string> constants,
        BankAnalysis analysis)
    {
        int cpuBase = CodeAnalyzer.CpuBase(bank);
        int fileStart = HeaderSize + (bank * PrgBankSize);
        StringBuilder output = new();
        output.AppendLine($"; PRG bank ${bank:X2}: ROM file ${fileStart:X6}-${fileStart + PrgBankSize - 1:X6}");
        output.AppendLine($"; CPU window ${cpuBase:X4}-${cpuBase + PrgBankSize - 1:X4}");
        output.AppendLine("; Generated losslessly by Dw4Tool. Code is limited to recursively proven paths.");
        output.AppendLine();
        output.AppendLine($"base ${cpuBase:X4}");
        output.AppendLine($"Bank{bank:X2}_Start:");

        Dictionary<int, List<BankLabel>> labelsByAddress = allLabels[bank]
            .GroupBy(label => label.Address)
            .ToDictionary(group => group.Key, group => group.ToList());
        int[] labelOffsets = labelsByAddress.Keys
            .Select(address => address - cpuBase)
            .Where(offset => offset >= 0 && offset < PrgBankSize)
            .Order()
            .ToArray();

        int offset = 0;
        while (offset < data.Length)
        {
            int address = cpuBase + offset;
            if (labelsByAddress.TryGetValue(address, out List<BankLabel>? addressLabels))
            {
                foreach (BankLabel label in addressLabels)
                {
                    output.AppendLine();
                    output.AppendLine($"; {label.Kind}: {label.Note}");
                    output.AppendLine($"{label.Name}:");
                }
            }

            if (analysis.Instructions.TryGetValue(offset, out DecodedInstruction? instruction))
            {
                output.Append("    ").Append(FormatInstruction(instruction, allLabels, constants));
                output.Append(" ; $").Append(address.ToString("X4", CultureInfo.InvariantCulture)).Append(':');
                for (int index = 0; index < instruction.Opcode.Size; index++)
                {
                    output.Append(' ').Append(data[offset + index].ToString("X2", CultureInfo.InvariantCulture));
                }

                output.AppendLine();
                offset += instruction.Opcode.Size;
                continue;
            }

            int count = Math.Min(16, data.Length - offset);
            int nextLabelOffset = Array.Find(labelOffsets, candidate => candidate > offset);
            if (nextLabelOffset > offset && nextLabelOffset < offset + count)
            {
                count = nextLabelOffset - offset;
            }

            int nextInstructionOffset = analysis.Instructions.Keys.FirstOrDefault(candidate => candidate > offset, -1);
            if (nextInstructionOffset > offset && nextInstructionOffset < offset + count)
            {
                count = nextInstructionOffset - offset;
            }

            output.Append("    db ");
            for (int index = 0; index < count; index++)
            {
                if (index > 0)
                {
                    output.Append(',');
                }

                output.Append('$').Append(data[offset + index].ToString("X2", CultureInfo.InvariantCulture));
            }

            output.AppendLine($" ; ${address:X4}");
            offset += count;
        }

        output.AppendLine($"Bank{bank:X2}_End:");
        return output.ToString();
    }

    private static string FormatInstruction(
        DecodedInstruction instruction,
        IReadOnlyDictionary<int, List<BankLabel>> allLabels,
        IReadOnlyDictionary<int, string> constants)
    {
        string mnemonic = instruction.Opcode.Mnemonic;
        int word = instruction.Operand1 | (instruction.Operand2 << 8);
        string immediateValue = $"${instruction.Operand1:X2}";
        string byteAddress = FormatAddress(instruction.Bank, instruction.Operand1, false, allLabels, constants);
        string wordValue = FormatAddress(instruction.Bank, word, true, allLabels, constants);
        string target = instruction.Target is int targetAddress
            ? FormatAddress(instruction.Bank, targetAddress, true, allLabels, constants)
            : wordValue;

        string operand = instruction.Opcode.Mode switch
        {
            AddressingMode.Implied => string.Empty,
            AddressingMode.Accumulator => "a",
            AddressingMode.Immediate => $"#{immediateValue}",
            AddressingMode.ZeroPage => byteAddress,
            AddressingMode.ZeroPageX => $"{byteAddress},x",
            AddressingMode.ZeroPageY => $"{byteAddress},y",
            AddressingMode.Relative => target,
            AddressingMode.Absolute => instruction.Opcode.IsCall || instruction.Opcode.IsJump ? target : wordValue,
            AddressingMode.AbsoluteX => $"{wordValue},x",
            AddressingMode.AbsoluteY => $"{wordValue},y",
            AddressingMode.Indirect => $"({wordValue})",
            AddressingMode.IndexedIndirect => $"({byteAddress},x)",
            AddressingMode.IndirectIndexed => $"({byteAddress}),y",
            _ => throw new InvalidOperationException($"unsupported addressing mode {instruction.Opcode.Mode}")
        };

        return operand.Length == 0 ? mnemonic : $"{mnemonic} {operand}";
    }

    private static string FormatAddress(
        int currentBank,
        int address,
        bool absoluteWidth,
        IReadOnlyDictionary<int, List<BankLabel>> allLabels,
        IReadOnlyDictionary<int, string> constants)
    {
        int? mappedBank = address switch
        {
            >= 0xC000 and <= 0xFFFF => currentBank < 0x10 ? 0x0F : 0x1F,
            >= 0x8000 and < 0xC000 when (currentBank & 0x0F) != 0x0F => currentBank,
            _ => null
        };

        string? name = null;
        if (mappedBank is int bank)
        {
            name = allLabels[bank].FirstOrDefault(label => label.Address == address)?.Name;
        }

        if (name is null)
        {
            constants.TryGetValue(address, out name);
        }

        string value = name ?? (absoluteWidth ? $"${address:X4}" : $"${address:X2}");
        return absoluteWidth && address < 0x100 ? $"a:{value}" : value;
    }

    private static void WriteCodeReport(
        string path,
        IReadOnlyList<CodeSeed> seeds,
        IReadOnlyDictionary<int, BankAnalysis> analyses)
    {
        Directory.CreateDirectory(Path.GetDirectoryName(path)!);
        StringBuilder report = new();
        report.AppendLine("Dragon Warrior IV static code-analysis report");
        report.AppendLine("Generated from explicit seeds using official 6502 opcodes only.");
        report.AppendLine();
        report.AppendLine("Seeds:");
        foreach (CodeSeed seed in seeds.Where(seed =>
            seed.Source != "FCEUX runtime" && seed.Source != "Ghidra headless"))
        {
            string end = seed.EndExclusive is int endExclusive ? $"-${endExclusive - 1:X4}" : string.Empty;
            report.AppendLine($"  bank ${seed.Bank:X2}:${seed.Address:X4}{end} | {seed.Source} | {seed.Reason}");
        }

        int runtimeSeeds = seeds.Count(seed => seed.Source == "FCEUX runtime");
        int ghidraSeeds = seeds.Count(seed => seed.Source == "Ghidra headless");
        if (ghidraSeeds > 0)
        {
            report.AppendLine($"  Ghidra headless observations: {ghidraSeeds} instruction starts");
        }
        if (runtimeSeeds > 0)
        {
            report.AppendLine($"  FCEUX runtime observations: {runtimeSeeds} instruction starts");
        }

        report.AppendLine();
        report.AppendLine("Coverage:");
        foreach ((int bank, BankAnalysis analysis) in analyses.Where(item => item.Value.Instructions.Count > 0))
        {
            int bytes = analysis.Instructions.Values.Sum(instruction => instruction.Opcode.Size);
            int warningCount = analysis.Warnings.Distinct().Count();
            report.AppendLine(
                $"  bank ${bank:X2}: {analysis.Instructions.Count} instructions, {bytes} bytes, {warningCount} warnings");
        }

        List<(int Bank, string Message, string Category)> warnings = analyses
            .SelectMany(item => item.Value.Warnings.Distinct().Select(message => (
                Bank: item.Key,
                Message: message,
                Category: message.Contains("existing instruction operand", StringComparison.Ordinal)
                    ? "conflict"
                    : message.Contains("unsupported opcode", StringComparison.Ordinal)
                        ? "data-walk"
                        : message.Contains("bank boundary", StringComparison.Ordinal)
                            ? "boundary"
                            : "other")))
            .ToList();

        report.AppendLine();
        report.AppendLine($"Warnings: {warnings.Count} total");
        foreach ((string category, string heading) in new[]
        {
            ("conflict", "Control-flow conflicts"),
            ("data-walk", "Unsupported opcodes / probable data walks"),
            ("boundary", "Physical bank-boundary crossings"),
            ("other", "Other warnings")
        })
        {
            List<(int Bank, string Message, string Category)> categoryWarnings = warnings
                .Where(warning => warning.Category == category)
                .ToList();
            if (categoryWarnings.Count == 0)
            {
                continue;
            }

            report.AppendLine();
            report.AppendLine($"{heading}: {categoryWarnings.Count}");
            foreach (IGrouping<int, (int Bank, string Message, string Category)> bankWarnings in categoryWarnings
                .GroupBy(warning => warning.Bank)
                .OrderByDescending(group => group.Count())
                .ThenBy(group => group.Key))
            {
                report.AppendLine($"  bank ${bankWarnings.Key:X2}: {bankWarnings.Count()}");
                foreach ((int _, string message, string _) in bankWarnings.OrderBy(warning => warning.Message))
                {
                    report.AppendLine($"    {message}");
                }
            }
        }

        File.WriteAllText(path, report.ToString(), new UTF8Encoding(false));
    }

    private static void WriteClassificationReport(
        string path,
        IReadOnlyList<BankClassification> bankClassifications,
        IReadOnlyList<ContentRange> contentRanges,
        IReadOnlyDictionary<int, BankAnalysis> analyses)
    {
        Directory.CreateDirectory(Path.GetDirectoryName(path)!);
        StringBuilder report = new();
        report.AppendLine("Dragon Warrior IV PRG classification coverage");
        report.AppendLine("Dominant classification records the verified subsystem or asset class of every physical bank.");
        report.AppendLine("Detailed classification is the union of verified instruction bytes and explicit content ranges.");
        report.AppendLine("Broad bank descriptions do not count toward detailed coverage.");
        report.AppendLine();
        report.AppendLine($"Dominant bank classification: {bankClassifications.Count} / {PrgBankCount} banks (100.00%)");
        report.AppendLine($"Dominantly classified PRG bytes: {PrgBankCount * PrgBankSize} / {PrgBankCount * PrgBankSize} (100.00%)");
        report.AppendLine();

        int totalCode = 0;
        int totalData = 0;
        int totalOverlap = 0;
        int totalClassified = 0;
        List<string> unclassifiedRanges = [];
        report.AppendLine("Detailed per bank:");
        for (int bank = 0; bank < PrgBankCount; bank++)
        {
            bool[] code = new bool[PrgBankSize];
            bool[] data = new bool[PrgBankSize];
            foreach (DecodedInstruction instruction in analyses[bank].Instructions.Values)
            {
                int offset = instruction.Address - CodeAnalyzer.CpuBase(bank);
                for (int index = 0; index < instruction.Opcode.Size; index++)
                {
                    code[offset + index] = true;
                }
            }

            foreach (ContentRange range in contentRanges.Where(range => range.Bank == bank))
            {
                int start = range.Start - CodeAnalyzer.CpuBase(bank);
                int endExclusive = range.EndExclusive - CodeAnalyzer.CpuBase(bank);
                for (int offset = start; offset < endExclusive; offset++)
                {
                    data[offset] = true;
                }
            }

            foreach (int offset in analyses[bank].InlineDataOffsets)
            {
                data[offset] = true;
            }

            int codeBytes = code.Count(value => value);
            int dataBytes = data.Count(value => value);
            int overlapBytes = Enumerable.Range(0, PrgBankSize).Count(index => code[index] && data[index]);
            int classifiedBytes = Enumerable.Range(0, PrgBankSize).Count(index => code[index] || data[index]);
            totalCode += codeBytes;
            totalData += dataBytes;
            totalOverlap += overlapBytes;
            totalClassified += classifiedBytes;
            report.AppendLine(
                $"  bank ${bank:X2}: {classifiedBytes,5} detailed " +
                $"({classifiedBytes * 100.0 / PrgBankSize,6:F2}%); " +
                $"code {codeBytes,5}; data {dataBytes,5}; overlap {overlapBytes,4}");

            int rangeStart = -1;
            for (int offset = 0; offset <= PrgBankSize; offset++)
            {
                bool unclassified = offset < PrgBankSize && !code[offset] && !data[offset];
                if (unclassified && rangeStart < 0)
                {
                    rangeStart = offset;
                }
                else if (!unclassified && rangeStart >= 0)
                {
                    int cpuBase = CodeAnalyzer.CpuBase(bank);
                    unclassifiedRanges.Add(
                        $"  bank ${bank:X2}:${cpuBase + rangeStart:X4}-${cpuBase + offset - 1:X4} " +
                        $"({offset - rangeStart} bytes)");
                    rangeStart = -1;
                }
            }
        }

        int totalPrgBytes = PrgBankCount * PrgBankSize;
        report.AppendLine();
        report.AppendLine($"Verified instruction bytes: {totalCode} / {totalPrgBytes} " +
            $"({totalCode * 100.0 / totalPrgBytes:F2}%)");
        report.AppendLine($"Explicitly ranged data bytes: {totalData} / {totalPrgBytes} " +
            $"({totalData * 100.0 / totalPrgBytes:F2}%)");
        report.AppendLine($"Dual-use code/data overlap bytes: {totalOverlap} / {totalPrgBytes} " +
            $"({totalOverlap * 100.0 / totalPrgBytes:F2}%)");
        report.AppendLine($"Detailed classification union: {totalClassified} / {totalPrgBytes} " +
            $"({totalClassified * 100.0 / totalPrgBytes:F2}%)");
        report.AppendLine($"Unclassified PRG bytes: {totalPrgBytes - totalClassified} / {totalPrgBytes} " +
            $"({(totalPrgBytes - totalClassified) * 100.0 / totalPrgBytes:F2}%)");
        report.AppendLine();
        report.AppendLine("Unclassified ranges:");
        foreach (string range in unclassifiedRanges)
        {
            report.AppendLine(range);
        }
        File.WriteAllText(path, report.ToString(), new UTF8Encoding(false));
    }

    private static void RequireArgumentCount(string[] args, int expected, string usage)
    {
        if (args.Length != expected)
        {
            throw new ArgumentException($"usage: {usage}");
        }
    }

    private sealed record BankLabel(int Address, string Name, string Kind, string Note);
    private sealed record ContentRange(
        int Bank,
        int Start,
        int EndExclusive,
        string Category,
        string Confidence,
        string Reason);
    private sealed record BankClassification(int Bank, string Category, string Confidence, string Reason);
    private sealed record RomFacts(int Mapper, int PrgSize, int ChrSize, bool Battery, bool VerticalMirroring);
}