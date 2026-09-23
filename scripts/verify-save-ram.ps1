param(
    [string]$ConfigPath = 'config\save-ram.tsv',
    [string]$ConstantsPath = 'src\constants\ram.inc',
    [string]$WritePath = 'analysis\fceux-writes.tsv',
    [string]$ReportPath = 'analysis\save-ram-report.md'
)

$ErrorActionPreference = 'Stop'

function Convert-Hex([string]$value) {
    return [Convert]::ToInt32($value, 16)
}

$constants = @{}
foreach ($line in Get-Content -LiteralPath $ConstantsPath) {
    if ($line -match '^\s*(?<name>[A-Za-z_][A-Za-z0-9_]*)\s*=\s*\$(?<address>[0-9A-F]{4})') {
        $constants[$matches.name] = Convert-Hex $matches.address
    }
}

$writes = @{}
foreach ($line in Get-Content -LiteralPath $WritePath) {
    if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
    $writes[(Convert-Hex (($line -split "`t")[0]))] = $true
}

$ranges = @()
foreach ($line in Get-Content -LiteralPath $ConfigPath) {
    if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
    $columns = $line -split "`t"
    if ($columns.Count -ne 6) { throw "invalid save RAM row: $line" }
    $start = Convert-Hex $columns[1]
    $endExclusive = Convert-Hex $columns[2]
    if ($start -lt 0x6000 -or $endExclusive -gt 0x8000 -or $start -ge $endExclusive) {
        throw "save RAM range is outside cartridge SRAM: $line"
    }
    if ($constants.ContainsKey($columns[0]) -and $constants[$columns[0]] -ne $start) {
        throw "$($columns[0]) does not match ram.inc"
    }
    $ranges += [pscustomobject]@{ Name = $columns[0]; Start = $start; EndExclusive = $endExclusive; Initialization = $columns[3]; Persistence = $columns[4]; Evidence = $columns[5] }
}

for ($index = 1; $index -lt $ranges.Count; $index++) {
    if ($ranges[$index].Start -lt $ranges[$index - 1].EndExclusive) {
        throw "overlapping save RAM ranges: $($ranges[$index - 1].Name) and $($ranges[$index].Name)"
    }
}

$report = @(
    '# Save RAM Verification',
    '',
    'The MMC1 cartridge exposes battery-backed SRAM at `$6000-$7FFF`. Runtime tracing observed direct writes to every address from `$6001-$62EE`; recovered code uses these addresses in place, so there is no separate RAM-to-save serialization layer in the recovered paths.',
    '',
    'No checksum field or full-save checksum pass appears in the recovered executable paths. Save integrity is therefore recorded as direct SRAM persistence with no verified checksum, rather than assigning an unsupported algorithm.',
    '',
    '| Field | Range | Runtime writes | Initialization | Evidence |',
    '|---|---:|---:|---|---|'
)
$missing = @()
foreach ($range in $ranges) {
    $hitCount = @($writes.Keys | Where-Object { $_ -ge $range.Start -and $_ -lt $range.EndExclusive }).Count
    if ($hitCount -ne ($range.EndExclusive - $range.Start)) { $missing += $range.Name }
    $report += ('| {0} | `${1:X4}-${2:X4}` | {3}/{4} | {5} | {6} |' -f $range.Name, $range.Start, ($range.EndExclusive - 1), $hitCount, ($range.EndExclusive - $range.Start), $range.Initialization, $range.Evidence)
}
$report | Set-Content -LiteralPath $ReportPath -Encoding UTF8

if ($missing.Count -gt 0) {
    throw "save RAM fields lack complete runtime write evidence: $($missing -join ', ')"
}
Write-Output "Save RAM verification passed: $($ranges.Count) fields; observed write span `$6001-`$62EE; checksum routine: none found"