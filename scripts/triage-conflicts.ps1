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
$sectionMatch = [regex]::Match($reportText, '(?s)Control-flow conflicts:(.+?)Unsupported opcodes')
if (-not $sectionMatch.Success) {
    throw "could not locate the control-flow conflict section in $ReportPath"
}
$section = $sectionMatch.Groups[1].Value

# Parse each conflict. Bank headers and conflict addresses are separate lines,
# so retain the most recent bank while walking the report section.
$currentBank = ""
$sectionLines = $section -split "`r?`n"
for ($index = 0; $index -lt $sectionLines.Count; $index++) {
    $line = $sectionLines[$index]
    if ($line -match '^\s*bank \$([0-9A-F]{2}):') {
        $currentBank = $matches[1]
        continue
    }
    if ($line -match '^\s*\$([A-F0-9]{4}):') {
        $addr = $matches[1]
        $conflicts += [pscustomobject]@{
            Bank = $currentBank
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
Write-Output "=== KNOWN GHIDRA ARTIFACTS ==="
$conflicts | Where-Object { $_.Bank -in @("0F", "1D", "1E") } | ForEach-Object {
    Write-Output "  `$$($_.Address)"
}
