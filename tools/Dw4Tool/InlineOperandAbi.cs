using System.Globalization;

internal sealed record InlineOperandRule(string Kind, string Key, int OperandCount, int HandlerBank, int HandlerAddress);

internal sealed class InlineOperandAbi
{
    public const int DefaultBrkOperandCount = 2;

    private readonly Dictionary<byte, InlineOperandRule> brkSelectors = [];
    private readonly Dictionary<(int Bank, int Entry), InlineOperandRule> brkServices = [];
    private readonly Dictionary<(int Bank, int Target), InlineOperandRule> jsrInline = [];

    public IReadOnlyList<InlineOperandRule> Rules { get; private set; } = [];

    // Banks whose $8000 service directory is a verified content range; set after loading content ranges.
    public IReadOnlySet<int> ServiceBanks { get; set; } = new HashSet<int>();

    // The dispatcher's default path ($C432-$C43D) selects bank ((selector >> 3) & 1) * $10 + (selector >> 4).
    // Low nibbles $3 and $B are routed before that computation to banks $10/$12, $16/$19, or flag services.
    public static int? DefaultServiceBank(byte selector) =>
        (selector & 0x0F) is 0x03 or 0x0B ? null : (((selector >> 3) & 1) << 4) | (selector >> 4);

    public static InlineOperandAbi Load(string path)
    {
        InlineOperandAbi abi = new();
        List<InlineOperandRule> rules = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 5 || string.IsNullOrWhiteSpace(columns[4]))
            {
                throw new InvalidDataException($"invalid inline-operand ABI row: {line}");
            }

            string kind = columns[0];
            string key = columns[1];
            int count = int.Parse(columns[2], CultureInfo.InvariantCulture);
            (int handlerBank, int handlerAddress) = ParseBankAddress(columns[3], line);
            InlineOperandRule rule = new(kind, key, count, handlerBank, handlerAddress);
            bool added = kind switch
            {
                "BrkSelector" when count is >= 2 and <= 4 =>
                    abi.brkSelectors.TryAdd(byte.Parse(key, NumberStyles.HexNumber, CultureInfo.InvariantCulture), rule),
                "BrkService" when count is >= 2 and <= 4 =>
                    abi.brkServices.TryAdd(ParseBankAddress(key, line), rule),
                "JsrInline" when count is >= 1 and <= 4 =>
                    abi.jsrInline.TryAdd(ParseBankAddress(key, line), rule),
                _ => throw new InvalidDataException($"invalid inline-operand ABI kind or count: {line}")
            };
            if (!added)
            {
                throw new InvalidDataException($"duplicate inline-operand ABI key: {line}");
            }

            rules.Add(rule);
        }

        // The dispatcher branches on these two selector families before any service lookup,
        // so a missing row would silently fall back to the default count.
        for (int high = 0; high < 0x10; high++)
        {
            foreach (int low in new[] { 0x03, 0x0B })
            {
                if (!abi.brkSelectors.ContainsKey((byte)((high << 4) | low)))
                {
                    throw new InvalidDataException($"inline-operand ABI lacks BRK selector ${(high << 4) | low:X2}");
                }
            }
        }

        if (abi.brkSelectors.Keys.Any(selector => (selector & 0x0F) is not (0x03 or 0x0B)))
        {
            throw new InvalidDataException("BrkSelector rows are limited to the dispatcher's $x3 and $xB selector families");
        }

        abi.Rules = rules;
        return abi;
    }

    public int BrkOperandCount(byte service, byte selector) => BrkRule(service, selector)?.OperandCount ?? DefaultBrkOperandCount;

    public InlineOperandRule? BrkRule(byte service, byte selector)
    {
        if (brkSelectors.TryGetValue(selector, out InlineOperandRule? rule))
        {
            return rule;
        }

        if (service >= 0x80 || DefaultServiceBank(selector) is not int bank)
        {
            return null;
        }

        return brkServices.GetValueOrDefault((bank, service));
    }

    public int JsrInlineOperandCount(int targetBank, int target) =>
        jsrInline.TryGetValue((targetBank, target), out InlineOperandRule? rule) ? rule.OperandCount : 0;

    private static (int Bank, int Address) ParseBankAddress(string value, string line)
    {
        string[] parts = value.Split(':');
        if (parts.Length != 2)
        {
            throw new InvalidDataException($"invalid bank:address '{value}' in inline-operand ABI row: {line}");
        }

        return (int.Parse(parts[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
            int.Parse(parts[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture));
    }
}
