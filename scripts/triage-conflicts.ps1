# Triage control-flow conflicts by examining context
# Usage: triage-conflicts.ps1
# Reads the conflict list from code-report.txt and disassembly to determine
# whether each conflict is data-table noise, genuine edge, or boundary issue.

param(
    [string]$ReportPath = "analysis\code-report.txt",
    [string]$SourceDir = "src\banks"
)

$conflicts = @()

# Extract conflict list from code-report.txt
$reportText = Get-Content $ReportPath -Raw
$section = $reportText -match '(?s)Control-flow conflicts:(.+?)Unsupported opcodes' | ForEach-Object { $matches[1] }

# Parse each conflict
$section -split '\n' | Where-Object { $_ -match '^\s+\$([A-F0-9]+):\s+control flow' } | ForEach-Object {
    if ($_ -match 'bank \$([0-9A-F]{2}):') {
        $bank = $matches[1]
    }
    if ($_ -match '\$([A-F0-9]{4}):') {
        $addr = $matches[1]
        $conflicts += @{
            Bank = $bank
            Address = $addr
            Opcode = "?"
            Context = ""
            Classification = "unknown"
        }
    }
}

Write-Output "=== CONTROL-FLOW CONFLICTS TRIAGE ==="
Write-Output "Total: $($conflicts.Count) conflicts"
Write-Output ""

# Group by bank and count
$conflicts | Group-Object Bank | Sort-Object Name | ForEach-Object {
    Write-Output "$($_.Name): $($_.Count) conflicts"
}

Write-Output ""
Write-Output "=== SAMPLE: BANK 1C CONFLICTS ==="
$conflicts | Where-Object { $_.Bank -eq "1C" } | ForEach-Object {
    Write-Output "  `$$($_.Address)"
}
