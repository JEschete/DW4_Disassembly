using System.Globalization;

// config/index-bounds.tsv records a proven index range for one absolute-indexed consumer, so the bytes it can
// reach are base+MinIndex through base+MaxIndex instead of the 256-byte worst case. Each row's evidence cites the
// guarding code (checked by CitationValidator), and extraction rejects a bound that any source-attributed runtime
// read or recorded register observation contradicts, or whose reach includes a byte that is not typed.
internal sealed record IndexBound(int Bank, int Consumer, int MinIndex, int MaxIndex, string Evidence);

internal static class IndexBounds
{
    public static List<IndexBound> Load(string path)
    {
        List<IndexBound> bounds = [];
        if (!File.Exists(path))
        {
            return bounds;
        }

        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 5 || string.IsNullOrWhiteSpace(columns[4]))
            {
                throw new InvalidDataException($"invalid index bound row: {line}");
            }

            IndexBound bound = new(
                int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                int.Parse(columns[2], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                int.Parse(columns[3], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                columns[4]);
            if (bound.Bank is < 0 or >= 0x20 || bound.MinIndex < 0 || bound.MaxIndex > 0xFF || bound.MinIndex > bound.MaxIndex)
            {
                throw new InvalidDataException($"invalid index bound range: {line}");
            }

            if (bounds.Any(existing => existing.Bank == bound.Bank && existing.Consumer == bound.Consumer))
            {
                throw new InvalidDataException($"duplicate index bound for ${bound.Bank:X2}:${bound.Consumer:X4}");
            }

            bounds.Add(bound);
        }

        return bounds;
    }

    public static bool IsIndexed(DecodedInstruction instruction) =>
        instruction.Opcode.Mode is AddressingMode.AbsoluteX or AddressingMode.AbsoluteY;

    public static int Base(DecodedInstruction instruction) => instruction.Operand1 | (instruction.Operand2 << 8);

    public static void Validate(
        IReadOnlyList<IndexBound> bounds,
        IReadOnlyDictionary<int, BankAnalysis> analyses,
        string runtimeReadSourcePath,
        string runtimeObservationPath,
        Func<int, int, bool> isClassified)
    {
        List<string> errors = [];
        List<(int ReadBank, int ReadAddress, int PcBank, int PcAddress)> reads = LoadReadSources(runtimeReadSourcePath);
        List<(int Bank, int Address, int X, int Y)> observations = LoadObservations(runtimeObservationPath);
        foreach (IndexBound bound in bounds)
        {
            string owner = $"index bound ${bound.Bank:X2}:${bound.Consumer:X4}";
            if (!analyses[bound.Bank].Instructions.TryGetValue(
                    bound.Consumer - CodeAnalyzer.CpuBase(bound.Bank),
                    out DecodedInstruction? instruction) ||
                !IsIndexed(instruction))
            {
                errors.Add($"{owner} is not a decoded absolute-indexed instruction");
                continue;
            }

            int baseAddress = Base(instruction);
            int endPc = bound.Consumer + instruction.Opcode.Size;
            foreach ((int readBank, int readAddress, int pcBank, int pcAddress) in reads)
            {
                // Opcode and operand fetches are logged with the fetched address as PC; a data read by the
                // consumer is logged with PC already past the instruction.
                if (pcBank != bound.Bank || pcAddress != endPc || readAddress == pcAddress)
                {
                    continue;
                }

                // An interrupt taken after the consumer logs its vector fetch with the same PC, so only
                // addresses the indexed instruction can form (base through base+255) are attributed to it.
                int index = readAddress - baseAddress;
                if (index is < 0 or > 0xFF)
                {
                    continue;
                }

                if (index < bound.MinIndex || index > bound.MaxIndex)
                {
                    errors.Add($"{owner} is contradicted by runtime read ${readBank:X2}:${readAddress:X4} (index {index})");
                }
            }

            foreach ((int bank, int address, int x, int y) in observations)
            {
                if (bank != bound.Bank || address != bound.Consumer)
                {
                    continue;
                }

                int index = instruction.Opcode.Mode == AddressingMode.AbsoluteX ? x : y;
                if (index < bound.MinIndex || index > bound.MaxIndex)
                {
                    errors.Add($"{owner} is contradicted by an observed index register value ${index:X2}");
                }
            }

            int targetBank = baseAddress >= 0xC000 ? (bound.Bank < 0x10 ? 0x0F : 0x1F) : bound.Bank;
            for (int address = baseAddress + bound.MinIndex; address <= baseAddress + bound.MaxIndex; address++)
            {
                if (!isClassified(targetBank, address))
                {
                    errors.Add($"{owner} reaches untyped byte ${targetBank:X2}:${address:X4}");
                }
            }
        }

        if (errors.Count != 0)
        {
            throw new InvalidDataException($"index bound validation failed ({errors.Count}): {string.Join("; ", errors.Take(20))}");
        }
    }

    private static List<(int, int, int, int)> LoadReadSources(string path)
    {
        List<(int, int, int, int)> rows = [];
        foreach (string line in File.ReadLines(path))
        {
            string[] columns = line.Split('\t');
            if (line.StartsWith('#') || columns.Length != 4)
            {
                continue;
            }

            rows.Add((Hex(columns[0]), Hex(columns[1]), Hex(columns[2]), Hex(columns[3])));
        }

        return rows;
    }

    private static List<(int, int, int, int)> LoadObservations(string path)
    {
        List<(int, int, int, int)> rows = [];
        foreach (string line in File.ReadLines(path))
        {
            string[] columns = line.Split('\t');
            if (line.StartsWith('#') || columns.Length < 5)
            {
                continue;
            }

            rows.Add((Hex(columns[0]), Hex(columns[1]), Hex(columns[3]), Hex(columns[4])));
        }

        return rows;
    }

    private static int Hex(string value) => int.Parse(value, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
}
