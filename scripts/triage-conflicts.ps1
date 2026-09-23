# Triage control-flow conflicts by examining context
# Usage: triage-conflicts.ps1
# Reads the conflict list from code-report.txt and disassembly to determine
# whether each conflict is data-table noise, genuine edge, or boundary issue.

param(
    [string]$ReportPath = "analysis\code-report.txt",
    [string]$SourceDir = "src\banks",
    [string]$ContentRangesPath = "config\content-ranges.tsv",
    [string]$ExclusionsPath = "config\code-exclusions.tsv",
    [string]$WarningOutputPath = "analysis\unsupported-opcode-triage.tsv",
    [string]$ResolvedWarningsPath = "config\resolved-unsupported-opcodes.tsv",
    [string]$CompletionReportPath = "analysis\unsupported-opcode-completion.md"
)

$conflicts = @()

# Extract conflict list from code-report.txt
$reportText = Get-Content $ReportPath -Raw
$sectionMatch = [regex]::Match($reportText, '(?s)Control-flow conflicts:(.+?)Unsupported opcodes')
if ($sectionMatch.Success) {
    $section = $sectionMatch.Groups[1].Value
} elseif ($reportText -match 'Unsupported opcodes / probable data walks:') {
    $section = ''
} else {
    throw "could not locate the control-flow conflict section in $ReportPath"
}

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

function Convert-Hex([string]$value) {
    return [Convert]::ToInt32(($value -replace '^\$', ''), 16)
}

function Read-ConfigTsv([string]$path) {
    $rows = @()
    foreach ($line in Get-Content $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) {
            continue
        }

        if ($line -notmatch '^\s*(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(.*)$') {
            throw "invalid five-column TSV row in ${path}: $line"
        }

        $rows += [pscustomobject]@{
            Bank = Convert-Hex $matches[1]
            Start = Convert-Hex $matches[2]
            EndExclusive = Convert-Hex $matches[3]
            Category = $matches[4]
            Reason = $matches[5]
        }
    }
    return $rows
}

function Find-SourceDataDirective([string]$path, [int]$address) {
    if (-not (Test-Path $path)) {
        return ''
    }

    foreach ($sourceLine in Get-Content $path) {
        if ($sourceLine -notmatch '^\s*db\s+(?<bytes>(?:\$[0-9A-F]{2}\s*,?\s*)+)\s*;\s*\$?(?<start>[0-9A-F]{4})(?::|\s)') {
            continue
        }

        $start = Convert-Hex $matches.start
        $byteCount = [regex]::Matches($matches.bytes, '\$[0-9A-F]{2}').Count
        if ($address -ge $start -and $address -lt ($start + $byteCount)) {
            return $sourceLine.Trim()
        }
    }

    return ''
}

function Find-SourceInstructionOperand([string]$path, [int]$address) {
    if (-not (Test-Path $path)) {
        return ''
    }

    foreach ($sourceLine in Get-Content $path) {
        if ($sourceLine -match '^\s*db\b' -or
            $sourceLine -notmatch ';\s*\$?(?<start>[0-9A-F]{4})(?::|\s)(?<bytes>(?:[0-9A-F]{2}\s*)+)') {
            continue
        }

        $start = Convert-Hex $matches.start
        $byteCount = [regex]::Matches($matches.bytes, '[0-9A-F]{2}').Count
        if ($address -gt $start -and $address -lt ($start + $byteCount)) {
            return $sourceLine.Trim()
        }
    }

    return ''
}

$ranges = Read-ConfigTsv $ContentRangesPath
$exclusions = Read-ConfigTsv $ExclusionsPath
$warnings = @()
$currentBank = $null
$inWarningSection = $false

foreach ($line in Get-Content $ReportPath) {
    if ($line -match '^Unsupported opcodes / probable data walks:') {
        $inWarningSection = $true
        continue
    }

    if (-not $inWarningSection) {
        continue
    }

    if ($line -match '^\s*bank \$([0-9A-F]{2}):') {
        $currentBank = Convert-Hex $matches[1]
        continue
    }

    if ($line -match '^\s*\$([0-9A-F]{4}): unsupported opcode \$([0-9A-F]{2})') {
        $warnings += [pscustomobject]@{
            Bank = $currentBank
            Address = Convert-Hex $matches[1]
            AddressText = ('$' + $matches[1])
            Opcode = ('$' + $matches[2])
        }
        continue
    }

    if ($warnings.Count -gt 0 -and $line -match '^\S' -and $line -notmatch '^\s*bank\s') {
        break
    }
}

$triage = foreach ($warning in $warnings) {
    $range = @($ranges | Where-Object {
        $_.Bank -eq $warning.Bank -and
        $warning.Address -ge $_.Start -and
        $warning.Address -lt $_.EndExclusive
    } | Select-Object -First 1)
    $exclusion = @($exclusions | Where-Object {
        $_.Bank -eq $warning.Bank -and
        $warning.Address -ge $_.Start -and
        $warning.Address -lt $_.EndExclusive
    } | Select-Object -First 1)

    $bankPath = Join-Path $SourceDir ("bank_{0:X2}.asm" -f $warning.Bank)
    $sourceLine = Find-SourceDataDirective $bankPath $warning.Address
    if ([string]::IsNullOrEmpty($sourceLine)) {
        $sourceLine = Find-SourceInstructionOperand $bankPath $warning.Address
    }

    if ($range.Count -gt 0) {
        $classification = 'verified-content-range'
        $category = $range.Category
        $reason = $range.Reason
    } elseif ($exclusion.Count -gt 0) {
        $classification = 'explicit-exclusion'
        $category = $exclusion.Category
        $reason = $exclusion.Reason
    } elseif ($sourceLine -match '\bdb\s') {
        $classification = 'intentional-data-walk'
        $category = 'GeneratedDataDirective'
        $reason = 'Unsupported opcode address is emitted as a raw data byte by the generated bank source.'
    } elseif (-not [string]::IsNullOrEmpty($sourceLine)) {
        $classification = 'instruction-operand-entry'
        $category = 'GeneratedInstructionOperand'
        $reason = 'A speculative control-flow path enters an operand byte of a separately verified instruction.'
    } else {
        $classification = 'probable-data-walk'
        $category = 'UnsupportedOpcodeInGap'
        $reason = 'Provisional: unsupported opcode stopped a trace in an unclassified gap with no generated instruction or data directive at the address; retain for later local ROM/context verification.'
    }

    [pscustomobject]@{
        Bank = ('{0:X2}' -f $warning.Bank)
        Address = $warning.AddressText
        Opcode = $warning.Opcode
        Classification = $classification
        Category = $category
        Reason = $reason
        SourceLine = $sourceLine
    }
}

$triage | Export-Csv -Path $WarningOutputPath -Delimiter "`t" -NoTypeInformation
Write-Output ""
Write-Output "=== UNSUPPORTED OPCODE TRIAGE ==="
Write-Output "Total: $($triage.Count) warnings"
$triage | Group-Object Classification | Sort-Object Name | ForEach-Object {
    Write-Output "  $($_.Name): $($_.Count)"
}

$resolved = @()
foreach ($line in Get-Content -LiteralPath $ResolvedWarningsPath) {
    if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
    $columns = $line -split "`t"
    if ($columns.Count -ne 6) { throw "invalid resolved warning row: $line" }
    $resolved += [pscustomobject]@{
        Bank = $columns[0]
        Address = $columns[1]
        Opcode = $columns[2]
        Classification = $columns[3]
        Category = $columns[4]
        Reason = $columns[5]
    }
}

foreach ($item in $resolved) {
    if ($triage | Where-Object { $_.Bank -eq $item.Bank -and $_.Address -eq $item.Address }) {
        throw "resolved warning still appears in current analyzer output: bank $($item.Bank):$($item.Address)"
    }
}

$combined = @($triage) + @($resolved)
$provisional = @($combined | Where-Object { $_.Classification -match 'probable|unknown|unresolved' })
if ($provisional.Count -gt 0) {
    throw "$($provisional.Count) warning cases remain provisional or unresolved"
}
$originalWarningCount = 143
$originalCurrentCount = $originalWarningCount - $resolved.Count
if ($triage.Count -lt $originalCurrentCount) {
    throw "current warning inventory lost original cases: expected at least $originalCurrentCount, found $($triage.Count)"
}
$additionalWarningCount = $triage.Count - $originalCurrentCount

$report = @(
    '# Unsupported Opcode Completion',
    '',
    "All $originalWarningCount warnings from the original analyzer inventory remain classified. $originalCurrentCount remain in the current report, $($resolved.Count) disappeared after mixed pointer-table values stopped being seeded as executable targets, and $additionalWarningCount additional warnings exposed by later control-flow recovery are also classified.",
    '',
    '| Classification | Count |',
    '|---|---:|'
)
$combined | Group-Object Classification | Sort-Object Name | ForEach-Object {
    $report += "| $($_.Name) | $($_.Count) |"
}
$report += @('', '## Resolved Analyzer Warnings', '')
foreach ($item in $resolved) {
    $report += ('- Bank `${0}:{1}` opcode `{2}`: {3}' -f $item.Bank, $item.Address, $item.Opcode, $item.Reason)
}
$report | Set-Content -LiteralPath $CompletionReportPath -Encoding UTF8
Write-Output "Original warning inventory complete: $originalWarningCount / $originalWarningCount classified"
Write-Output "Additional recovered-path warnings classified: $additionalWarningCount"
