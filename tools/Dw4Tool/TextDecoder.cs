using System.Globalization;
using System.Text;

internal sealed record TextMessage(
    int Id,
    int Group,
    int Index,
    int StartBit,
    int EndBit,
    IReadOnlyList<byte> Symbols,
    string Text);

internal sealed record TextGroup(
    int Number,
    int Bank,
    int Address,
    IReadOnlyList<TextMessage> Messages);

internal static class TextDecoder
{
    private const int HeaderSize = 16;
    private const int BankSize = 0x4000;
    private const int TreeBank = 0x16;
    private const int TreeOneAddress = 0x87D8;
    private const int TreeZeroAddress = 0x8835;
    private const int PointerTableAddress = 0x8951;
    private const int RootNode = 0x5C;
    private const int EndMessage = 0x46;
    private const int MessageCountPerGroup = 32;
    private const int GroupCount = 0x58;
    private const int StreamEndExclusive = 0xBFD8;
    private const int FinalContinuationPointerAddress = 0x8014;

    private static readonly int[] BankThresholds = [0x1A, 0x28, 0x36, 0x41, 0x4B, 0x56];

    public static IReadOnlyList<TextGroup> Decode(ReadOnlySpan<byte> rom)
    {
        byte[] oneBranches = ReadCpuRange(rom, TreeBank, TreeOneAddress, RootNode + 1);
        byte[] zeroBranches = ReadCpuRange(rom, TreeBank, TreeZeroAddress, RootNode + 1);
        List<TextGroup> groups = [];

        for (int groupNumber = 0; groupNumber < GroupCount; groupNumber++)
        {
            int pointerAddress = PointerTableAddress + (groupNumber * 2);
            int address = ReadCpuByte(rom, TreeBank, pointerAddress) |
                (ReadCpuByte(rom, TreeBank, pointerAddress + 1) << 8);
            int bank = GroupToBank(groupNumber);
            TextBitReader reader = new(rom, bank, address);
            List<TextMessage> messages = [];

            for (int index = 0; index < MessageCountPerGroup; index++)
            {
                int startBit = reader.BitPosition;
                List<byte> symbols = [];
                for (int symbolCount = 0; symbolCount < 4096; symbolCount++)
                {
                    int node = RootNode;
                    while (true)
                    {
                        int next = reader.ReadBit() == 0 ? zeroBranches[node] : oneBranches[node];
                        if ((next & 0x80) != 0)
                        {
                            byte symbol = (byte)(next & 0x7F);
                            if (symbol != EndMessage)
                            {
                                symbols.Add(symbol);
                            }
                            else
                            {
                                int id = (groupNumber * MessageCountPerGroup) + index;
                                messages.Add(new TextMessage(
                                    id,
                                    groupNumber,
                                    index,
                                    startBit,
                                    reader.BitPosition,
                                    symbols,
                                    RenderSymbols(symbols)));
                                goto MessageComplete;
                            }
                            break;
                        }

                        if (next > RootNode)
                        {
                            throw new InvalidDataException(
                                $"text group ${groupNumber:X2} references invalid Huffman node ${next:X2}");
                        }
                        node = next;
                    }
                }

                throw new InvalidDataException(
                    $"text group ${groupNumber:X2}, message ${index:X2} has no terminator");

            MessageComplete:
                ;
            }

            groups.Add(new TextGroup(groupNumber, bank, address, messages));
        }

        return groups;
    }

    public static void WriteReports(string analysisDirectory, IReadOnlyList<TextGroup> groups)
    {
        Directory.CreateDirectory(analysisDirectory);
        File.Delete(Path.Combine(analysisDirectory, "text-bank-00.tsv"));
        string tsvPath = Path.Combine(analysisDirectory, "text.tsv");
        StringBuilder tsv = new();
        tsv.AppendLine("TextId\tGroup\tIndex\tBank\tPointer\tStartBit\tEndBit\tSymbols\tText");
        foreach (TextGroup group in groups)
        {
            foreach (TextMessage message in group.Messages)
            {
                tsv.Append(message.Id.ToString("X4", CultureInfo.InvariantCulture)).Append('\t')
                    .Append(message.Group.ToString("X2", CultureInfo.InvariantCulture)).Append('\t')
                    .Append(message.Index.ToString("X2", CultureInfo.InvariantCulture)).Append('\t')
                    .Append(group.Bank.ToString("X2", CultureInfo.InvariantCulture)).Append('\t')
                    .Append(group.Address.ToString("X4", CultureInfo.InvariantCulture)).Append('\t')
                    .Append(message.StartBit.ToString(CultureInfo.InvariantCulture)).Append('\t')
                    .Append(message.EndBit.ToString(CultureInfo.InvariantCulture)).Append('\t')
                    .Append(string.Join(' ', message.Symbols.Select(symbol => symbol.ToString("X2", CultureInfo.InvariantCulture))))
                    .Append('\t').AppendLine(message.Text);
            }
        }
        File.WriteAllText(tsvPath, tsv.ToString(), new UTF8Encoding(false));

        foreach (IGrouping<int, TextGroup> bankGroups in groups.GroupBy(group => group.Bank))
        {
            WriteBankReport(
                Path.Combine(analysisDirectory, $"text-bank-{bankGroups.Key:X2}.md"),
                bankGroups.Key,
                bankGroups.ToList());
        }
    }

    private static void WriteBankReport(string path, int bank, IReadOnlyList<TextGroup> groups)
    {
        StringBuilder report = new();
        report.AppendLine($"# Dragon Warrior IV Text - Physical Bank ${bank:X2}");
        report.AppendLine();
        report.AppendLine($"Bank `${bank:X2}:$8000-$BFD7` contains part of the Huffman-compressed dialogue stream. " +
            "The game decodes symbols through the binary tree at bank `$16:$87D8/$8835`. " +
            "Symbol `$46` terminates each message. The stream rolls between physical text banks at CPU `$BFD8`.");
        report.AppendLine();
        report.AppendLine($"Decoded groups: {groups.Count}; messages: {groups.Sum(group => group.Messages.Count)}.");
        foreach (TextGroup group in groups)
        {
            report.AppendLine();
            report.AppendLine($"## Group `${group.Number:X2}` at `$00:{group.Address:X4}`");
            report.AppendLine();
            foreach (TextMessage message in group.Messages)
            {
                report.AppendLine($"- `${message.Id:X4}`: {message.Text}");
            }
        }
        File.WriteAllText(path, report.ToString(), new UTF8Encoding(false));
    }

    private static string RenderSymbols(IReadOnlyList<byte> symbols)
    {
        StringBuilder text = new();
        foreach (byte symbol in symbols)
        {
            if (symbol == 0x00)
            {
                text.Append(' ');
            }
            else if (symbol is >= 0x01 and <= 0x0A)
            {
                text.Append((char)('0' + symbol - 1));
            }
            else if (symbol is >= 0x0B and <= 0x24)
            {
                text.Append((char)('a' + symbol - 0x0B));
            }
            else if (symbol is >= 0x25 and <= 0x3E)
            {
                text.Append((char)('A' + symbol - 0x25));
            }
            else
            {
                text.Append(symbol switch
                {
                    0x65 => "--",
                    0x66 or 0x67 => "\"",
                    0x68 or 0x69 or 0x6A or 0x6B => "'",
                    0x6C => ".'",
                    0x6D => "?",
                    0x6E => "!",
                    0x6F => "-",
                    0x70 => "*",
                    0x71 => ":",
                    0x72 => "...",
                    0x75 => "(",
                    0x76 => ")",
                    0x77 => ",",
                    0x78 => ".",
                    0x80 => "<DOWN>",
                    0x81 => "<RIGHT>",
                    _ => $"<{symbol:X2}>"
                });
            }
        }
        return text.ToString();
    }

    private static int GroupToBank(int group)
    {
        int range = 0;
        while (range < BankThresholds.Length && group >= BankThresholds[range])
        {
            range++;
        }
        return range switch
        {
            <= 4 => range,
            5 => 0x1A,
            _ => 0x1B
        };
    }

    private static byte[] ReadCpuRange(ReadOnlySpan<byte> rom, int bank, int address, int count)
    {
        byte[] result = new byte[count];
        for (int index = 0; index < count; index++)
        {
            result[index] = ReadCpuByte(rom, bank, address + index);
        }
        return result;
    }

    private static byte ReadCpuByte(ReadOnlySpan<byte> rom, int bank, int address)
    {
        int offset = HeaderSize + (bank * BankSize) + address - 0x8000;
        if (bank is < 0 or >= 32 || address is < 0x8000 or >= 0xC000 || offset >= rom.Length)
        {
            throw new InvalidDataException($"invalid text stream address bank ${bank:X2}:${address:X4}");
        }
        return rom[offset];
    }

    private sealed class TextBitReader
    {
        private readonly ReadOnlyMemory<byte> rom;
        private int bank;
        private int address;
        private int buffer;
        private int bitsRemaining;

        public TextBitReader(ReadOnlySpan<byte> rom, int bank, int address)
        {
            this.rom = rom.ToArray();
            this.bank = bank;
            this.address = address;
        }

        public int BitPosition { get; private set; }

        public int ReadBit()
        {
            if (bitsRemaining == 0)
            {
                buffer = (ReadByte() << 16) | (ReadByte() << 8) | ReadByte();
                bitsRemaining = 24;
            }

            int bit = (buffer >> 23) & 1;
            buffer = (buffer << 1) & 0xFFFFFF;
            bitsRemaining--;
            BitPosition++;
            return bit;
        }

        private int ReadByte()
        {
            int value = ReadCpuByte(rom.Span, bank, address);
            address++;
            if (address == StreamEndExclusive)
            {
                if (bank < 4)
                {
                    bank++;
                    address = 0x8000;
                }
                else if (bank == 4)
                {
                    bank = 0x1A;
                    address = 0x8000;
                }
                else if (bank == 0x1A)
                {
                    bank = 0x1B;
                    address = 0x8000;
                }
                else if (bank == 0x1B)
                {
                    address = ReadCpuByte(rom.Span, bank, FinalContinuationPointerAddress) |
                        (ReadCpuByte(rom.Span, bank, FinalContinuationPointerAddress + 1) << 8);
                }
                else
                {
                    throw new InvalidDataException("text stream crossed the final supported bank boundary");
                }
            }
            return value;
        }
    }
}