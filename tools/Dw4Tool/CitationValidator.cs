using System.Globalization;
using System.Text.RegularExpressions;

// Content-range reasons cite their evidence as "MNEMONIC operand at $ADDR" (or a slash-separated
// group "A / B at $ADDR-$END"). Every cited instruction must be decoded code at the cited place,
// so a reason cannot silently drift from the analysis it claims to rest on.
internal static class CitationValidator
{
    private const string Mnemonics =
        "LDA|LDX|LDY|STA|STX|STY|CMP|CPX|CPY|ADC|SBC|AND|ORA|EOR|BIT|INC|DEC|JSR|JMP|BCC|BCS|BEQ|BNE|BMI|BPL|" +
        "DEX|DEY|INX|INY|TAX|TAY|TXA|TYA|CLC|SEC|ASL|LSR|ROL|ROR|RTS|PHA|PLA";

    private static readonly Regex Citation = new(
        @"((?:(?:" + Mnemonics + @")(?:\s+#?\$[0-9A-F]{2,4}(?:,[XY])?)?\s*/\s*)*(?:" + Mnemonics +
        @")(?:\s+#?\$[0-9A-F]{2,4}(?:,[XY])?)?)\s+at\s+(?:bank \$(?<bank>[0-9A-F]{2}):)?\$(?<start>[0-9A-F]{4})(?:-\$(?<end>[0-9A-F]{4}))?",
        RegexOptions.Compiled);

    public static void Validate(
        IEnumerable<(int Bank, string Owner, string Reason)> reasons,
        IReadOnlyDictionary<int, BankAnalysis> analyses)
    {
        List<string> errors = [];
        foreach ((int ownerBank, string owner, string reason) in reasons)
        {
            foreach (Match match in Citation.Matches(reason))
            {
                int bank = match.Groups["bank"].Success
                    ? int.Parse(match.Groups["bank"].Value, NumberStyles.HexNumber, CultureInfo.InvariantCulture)
                    : ownerBank;
                int start = int.Parse(match.Groups["start"].Value, NumberStyles.HexNumber, CultureInfo.InvariantCulture);
                int end = match.Groups["end"].Success
                    ? int.Parse(match.Groups["end"].Value, NumberStyles.HexNumber, CultureInfo.InvariantCulture)
                    : start;
                if (start >= 0xC000 && (bank & 0x0F) != 0x0F)
                {
                    bank = bank < 0x10 ? 0x0F : 0x1F;
                }

                List<string> window = analyses[bank].Instructions.Values
                    .Where(instruction => instruction.Address >= start && instruction.Address <= end)
                    .Select(Format)
                    .ToList();
                foreach (string part in Regex.Split(match.Groups[1].Value.Trim(), @"\s*/\s*"))
                {
                    string cited = Regex.Replace(part.Trim(), @"\s+", " ");
                    bool mnemonicOnly = !cited.Contains(' ');
                    if (!window.Any(text => text.Equals(cited, StringComparison.OrdinalIgnoreCase) ||
                        mnemonicOnly && text.Split(' ')[0].Equals(cited, StringComparison.OrdinalIgnoreCase)))
                    {
                        errors.Add($"{owner} cites '{cited}' at bank ${bank:X2}:${start:X4}" +
                            (end != start ? $"-${end:X4}" : string.Empty) + ", which is not decoded there");
                    }
                }
            }
        }

        if (errors.Count != 0)
        {
            throw new InvalidDataException($"evidence citation validation failed ({errors.Count}): {string.Join("; ", errors.Take(20))}");
        }
    }

    private static string Format(DecodedInstruction instruction)
    {
        string mnemonic = instruction.Opcode.Mnemonic.ToUpperInvariant();
        int word = instruction.Operand1 | (instruction.Operand2 << 8);
        string operand = instruction.Opcode.Mode switch
        {
            AddressingMode.Immediate => $"#${instruction.Operand1:X2}",
            AddressingMode.ZeroPage => $"${instruction.Operand1:X2}",
            AddressingMode.ZeroPageX => $"${instruction.Operand1:X2},X",
            AddressingMode.ZeroPageY => $"${instruction.Operand1:X2},Y",
            AddressingMode.Absolute => $"${word:X4}",
            AddressingMode.AbsoluteX => $"${word:X4},X",
            AddressingMode.AbsoluteY => $"${word:X4},Y",
            AddressingMode.Relative => $"${instruction.Target:X4}",
            _ => string.Empty
        };
        return operand.Length == 0 ? mnemonic : $"{mnemonic} {operand}";
    }
}
