using System.Globalization;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;

internal sealed record WarningIdentity(int Bank, int Address, string Kind);

internal sealed record WarningLedgerRow(WarningIdentity Identity, string Status, string Disposition, string Reason);

// Every analyzer warning ever tracked is recorded by identity (bank, address, kind). Current
// warnings must match the ledger exactly, and each resolved warning's disposition is re-checked
// against the present analysis, so a new, vanished, or stale warning fails extraction instead of
// being absorbed by count arithmetic.
internal static class WarningLedger
{
    private static readonly Regex WarningAddress = new(@"^\$(?<address>[0-9A-F]{4}): ", RegexOptions.Compiled);

    public static string KindOf(string message) =>
        message.Contains("existing instruction operand", StringComparison.Ordinal) ? "operand-conflict" :
        message.Contains("unsupported opcode", StringComparison.Ordinal) ? "unsupported-opcode" :
        message.Contains("bank boundary", StringComparison.Ordinal) ? "bank-boundary" :
        message.Contains("no service directory", StringComparison.Ordinal) ||
        message.Contains("hardware or unmapped", StringComparison.Ordinal) ? "invalid-transfer" :
        throw new InvalidDataException($"unrecognized analyzer warning: {message}");

    public static void Validate(
        string ledgerPath,
        string originalInventoryPath,
        string manifestPath,
        string reportPath,
        IReadOnlyDictionary<int, BankAnalysis> analyses,
        Func<int, int, bool> isTypedData)
    {
        ValidateManifest(manifestPath, ledgerPath, originalInventoryPath);

        Dictionary<WarningIdentity, string> current = [];
        foreach ((int bank, BankAnalysis analysis) in analyses)
        {
            foreach (string message in analysis.Warnings.Distinct())
            {
                Match match = WarningAddress.Match(message);
                if (!match.Success)
                {
                    throw new InvalidDataException($"analyzer warning lacks an address: {message}");
                }

                current[new WarningIdentity(
                    bank,
                    int.Parse(match.Groups["address"].Value, NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                    KindOf(message))] = message;
            }
        }

        List<WarningLedgerRow> ledger = LoadLedger(ledgerPath);
        List<string> errors = [];
        foreach (IGrouping<WarningIdentity, WarningLedgerRow> duplicate in ledger.GroupBy(row => row.Identity).Where(group => group.Count() > 1))
        {
            errors.Add($"duplicate ledger identity bank ${duplicate.Key.Bank:X2}:${duplicate.Key.Address:X4} {duplicate.Key.Kind}");
        }

        HashSet<WarningIdentity> ledgerCurrent = ledger.Where(row => row.Status == "current").Select(row => row.Identity).ToHashSet();
        foreach (WarningIdentity identity in current.Keys.Where(identity => !ledgerCurrent.Contains(identity)))
        {
            errors.Add($"new analyzer warning not in the ledger: bank ${identity.Bank:X2} {current[identity]}");
        }
        foreach (WarningIdentity identity in ledgerCurrent.Where(identity => !current.ContainsKey(identity)))
        {
            errors.Add($"ledger lists bank ${identity.Bank:X2}:${identity.Address:X4} {identity.Kind} as current, but the analyzer no longer reports it");
        }

        foreach (WarningLedgerRow row in ledger.Where(row => row.Status == "resolved"))
        {
            (int bank, int address, _) = row.Identity;
            BankAnalysis analysis = analyses[bank];
            int offset = address - CodeAnalyzer.CpuBase(bank);
            bool inline = analysis.InlineDataOffsets.Contains(offset);
            bool instruction = analysis.Instructions.Values.Any(item =>
                offset >= item.Offset && offset < item.Offset + item.Opcode.Size);
            bool holds = row.Disposition switch
            {
                "inline-operand" => inline,
                "decoded-instruction" => instruction,
                "typed-data" => !inline && !instruction && isTypedData(bank, address),
                "unreached" => !inline && !instruction && !isTypedData(bank, address),
                _ => false
            };
            if (!holds)
            {
                errors.Add($"resolved warning bank ${bank:X2}:${address:X4} no longer satisfies disposition '{row.Disposition}'");
            }
        }

        List<(int Bank, int Address)> original = LoadOriginalInventory(originalInventoryPath);
        HashSet<(int Bank, int Address)> recorded = ledger.Select(row => (row.Identity.Bank, row.Identity.Address)).ToHashSet();
        foreach ((int bank, int address) in original.Where(item => !recorded.Contains(item)))
        {
            errors.Add($"original warning bank ${bank:X2}:${address:X4} is not accounted for in the ledger");
        }

        WriteReport(reportPath, ledger, original, current);
        if (errors.Count != 0)
        {
            throw new InvalidDataException($"analyzer warning ledger validation failed ({errors.Count}): {string.Join("; ", errors.Take(25))}");
        }
    }

    private static void ValidateManifest(string manifestPath, params string[] protectedPaths)
    {
        Dictionary<string, string> expected = new(StringComparer.OrdinalIgnoreCase);
        foreach (string line in File.ReadLines(manifestPath))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 2 || columns[0].Length != 64 ||
                !columns[0].All(Uri.IsHexDigit) || !expected.TryAdd(columns[1], columns[0]))
            {
                throw new InvalidDataException($"invalid analyzer warning manifest row: {line}");
            }
        }

        HashSet<string> protectedNames = protectedPaths
            .Select(path => Path.GetFileName(path)!)
            .ToHashSet(StringComparer.OrdinalIgnoreCase);
        if (!expected.Keys.ToHashSet(StringComparer.OrdinalIgnoreCase).SetEquals(protectedNames))
        {
            throw new InvalidDataException("analyzer warning manifest must name exactly the ledger and original inventory");
        }

        foreach (string path in protectedPaths)
        {
            string name = Path.GetFileName(path);
            string actual = Convert.ToHexString(SHA256.HashData(File.ReadAllBytes(path)));
            if (!actual.Equals(expected[name], StringComparison.OrdinalIgnoreCase))
            {
                throw new InvalidDataException(
                    $"analyzer warning manifest mismatch for {name}: expected {expected[name]}, got {actual}");
            }
        }
    }

    private static void WriteReport(
        string path,
        IReadOnlyList<WarningLedgerRow> ledger,
        IReadOnlyList<(int Bank, int Address)> original,
        IReadOnlyDictionary<WarningIdentity, string> current)
    {
        HashSet<(int Bank, int Address)> originalSet = original.ToHashSet();
        StringBuilder report = new();
        report.AppendLine("# Analyzer Warning Ledger");
        report.AppendLine();
        report.AppendLine("Generated by `Dw4Tool extract` from `config/analyzer-warning-ledger.tsv`. Every warning is tracked by identity");
        report.AppendLine("(bank, address, kind); resolved dispositions are re-checked against the current analysis on every run.");
        report.AppendLine();
        int originalCurrent = ledger.Count(row => row.Status == "current" && originalSet.Contains((row.Identity.Bank, row.Identity.Address)));
        int additionalCurrent = ledger.Count(row => row.Status == "current") - originalCurrent;
        report.AppendLine($"Current analyzer warnings: {current.Count}");
        report.AppendLine($"Original inventory: {original.Count} warnings; {originalCurrent} current, {original.Count - originalCurrent} resolved");
        report.AppendLine($"Warnings added after the original inventory: {ledger.Count(row => !originalSet.Contains((row.Identity.Bank, row.Identity.Address)))}; {additionalCurrent} current");
        report.AppendLine($"Ledger identities: {ledger.Count}");
        report.AppendLine();
        report.AppendLine("| Status | Disposition | Count |");
        report.AppendLine("|---|---|---:|");
        foreach (IGrouping<(string Status, string Disposition), WarningLedgerRow> group in ledger
            .GroupBy(row => (row.Status, row.Disposition))
            .OrderBy(group => group.Key.Status)
            .ThenBy(group => group.Key.Disposition))
        {
            report.AppendLine($"| {group.Key.Status} | {group.Key.Disposition} | {group.Count()} |");
        }

        report.AppendLine();
        report.AppendLine("## Current Warnings");
        report.AppendLine();
        if (current.Count == 0)
        {
            report.AppendLine("None.");
        }
        foreach (WarningLedgerRow row in ledger.Where(row => row.Status == "current"))
        {
            report.AppendLine($"- Bank `${row.Identity.Bank:X2}:${row.Identity.Address:X4}` {row.Identity.Kind}: {row.Reason}");
        }

        File.WriteAllText(path, report.ToString(), new UTF8Encoding(false));
    }

    private static List<WarningLedgerRow> LoadLedger(string path)
    {
        List<WarningLedgerRow> rows = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            if (columns.Length != 6 || columns[3] is not ("current" or "resolved") ||
                columns[2] is not ("unsupported-opcode" or "operand-conflict" or "invalid-transfer" or "bank-boundary") ||
                string.IsNullOrWhiteSpace(columns[5]))
            {
                throw new InvalidDataException($"invalid analyzer warning ledger row: {line}");
            }

            rows.Add(new WarningLedgerRow(
                new WarningIdentity(
                    int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                    int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                    columns[2]),
                columns[3],
                columns[4],
                columns[5]));
        }

        return rows;
    }

    private static List<(int Bank, int Address)> LoadOriginalInventory(string path)
    {
        List<(int Bank, int Address)> rows = [];
        foreach (string line in File.ReadLines(path))
        {
            if (string.IsNullOrWhiteSpace(line) || line.StartsWith('#'))
            {
                continue;
            }

            string[] columns = line.Split('\t');
            rows.Add((int.Parse(columns[0], NumberStyles.HexNumber, CultureInfo.InvariantCulture),
                int.Parse(columns[1], NumberStyles.HexNumber, CultureInfo.InvariantCulture)));
        }

        return rows;
    }
}
