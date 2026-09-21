param(
    [string]$AnalysisRoot = (Join-Path (Split-Path -Parent $PSScriptRoot) 'analysis')
)

$ErrorActionPreference = 'Stop'
$monolithicPath = Join-Path $AnalysisRoot 'ghidra-code-ranges.tsv'
$shardRoot = Join-Path $AnalysisRoot 'ghidra-shards'
$shardPaths = @(
    Join-Path $shardRoot 'banks-00-07.tsv'
    Join-Path $shardRoot 'banks-08-0F.tsv'
    Join-Path $shardRoot 'banks-10-17.tsv'
    Join-Path $shardRoot 'banks-18-1F.tsv'
)

foreach ($path in @($monolithicPath) + $shardPaths) {
    if (-not (Test-Path -LiteralPath $path)) {
        throw "Required Ghidra range file not found: $path"
    }
}

function Read-Ranges([string]$Path) {
    $ranges = [Collections.Generic.List[object]]::new()
    foreach ($line in Get-Content -LiteralPath $Path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $columns = $line -split "`t", -1
        if ($columns.Count -ne 5) { throw "Invalid Ghidra range: $line" }
        $bank = [Convert]::ToInt32($columns[0], 16)
        $start = [Convert]::ToInt32($columns[1], 16)
        $end = [Convert]::ToInt32($columns[2], 16)
        $instructionCount = [int]$columns[3]
        if ($bank -lt 0 -or $bank -ge 32 -or $start -ge $end -or $instructionCount -le 0) {
            throw "Invalid Ghidra range values: $line"
        }
        $ranges.Add([pscustomobject]@{
            Bank = $bank
            Start = $start
            End = $end
            InstructionCount = $instructionCount
            Line = $line
        })
    }
    return $ranges
}

$monolithic = @(Read-Ranges $monolithicPath)
$sharded = @($shardPaths | ForEach-Object { Read-Ranges $_ })
$selected = [Collections.Generic.List[object]]::new()
$summary = [Collections.Generic.List[string]]::new()

for ($bank = 0; $bank -lt 32; $bank++) {
    $monoBank = @($monolithic | Where-Object Bank -eq $bank)
    $shardBank = @($sharded | Where-Object Bank -eq $bank)
    $monoInstructions = ($monoBank | Measure-Object InstructionCount -Sum).Sum
    $shardInstructions = ($shardBank | Measure-Object InstructionCount -Sum).Sum
    if ($null -eq $monoInstructions) { $monoInstructions = 0 }
    if ($null -eq $shardInstructions) { $shardInstructions = 0 }

    $winner = if ($shardInstructions -gt $monoInstructions) { $shardBank } else { $monoBank }
    $source = if ($shardInstructions -gt $monoInstructions) { 'shard' } else { 'monolithic' }
    foreach ($range in $winner) { $selected.Add($range) }
    $summary.Add(('{0:X2}: {1} ({2} instructions)' -f $bank, $source, [Math]::Max($monoInstructions, $shardInstructions)))
}

$ordered = @($selected | Sort-Object Bank, Start, End)
for ($index = 1; $index -lt $ordered.Count; $index++) {
    $previous = $ordered[$index - 1]
    $current = $ordered[$index]
    if ($previous.Bank -eq $current.Bank -and $current.Start -lt $previous.End) {
        throw ('Selected ranges overlap in bank {0:X2}: {1:X4}-{2:X4} and {3:X4}-{4:X4}' -f
            $current.Bank, $previous.Start, $previous.End, $current.Start, $current.End)
    }
}

$output = @('# Bank`tStart`tEndExclusive`tInstructionCount`tGhidraBlock') + @($ordered.Line)
Set-Content -LiteralPath $monolithicPath -Value $output -Encoding ASCII
$summary | ForEach-Object { Write-Host $_ }
Write-Host "Reconciled $($ordered.Count) ranges into $monolithicPath"