# Triage control-flow conflicts by examining context
# Usage: triage-conflicts.ps1
# Reads the conflict list from code-report.txt and disassembly to determine
# whether each conflict is data-table noise, genuine edge, or boundary issue.

param(
    [string]$ReportPath = "analysis\code-report.txt",
    [string]$SourceDir = "src\banks",
    [string]$ContentRangesPath = "config\content-ranges.tsv",
    [string]$ExclusionsPath = "config\code-exclusions.tsv",
    [string]$WarningOutputPath = "analysis\unsupported-opcode-triage.tsv"
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
    $sourceLine = ''
    if (Test-Path $bankPath) {
        $sourceMatch = Select-String -Path $bankPath -Pattern ((';\s*' + ('{0:X4}' -f $warning.Address) + '\s')) | Select-Object -First 1
        if ($null -ne $sourceMatch) {
            $sourceLine = $sourceMatch.Line.Trim()
        }
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
