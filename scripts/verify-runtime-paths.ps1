param(
    [string]$ConfigPath = 'config\runtime-paths.tsv',
    [string]$ExecPath = 'analysis\fceux-exec.tsv',
    [string]$ReadPath = 'analysis\fceux-reads.tsv',
    [string]$WritePath = 'analysis\fceux-writes.tsv',
    [string]$ReportPath = 'analysis\runtime-path-report.md'
)

$ErrorActionPreference = 'Stop'

function Convert-Hex([string]$value) {
    return [Convert]::ToInt32($value, 16)
}

function Read-BankedTrace([string]$path) {
    $records = @()
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $columns = $line -split "`t"
        if ($columns.Count -ne 2) { throw "invalid banked trace row in ${path}: $line" }
        $records += [pscustomobject]@{ Bank = Convert-Hex $columns[0]; Address = Convert-Hex $columns[1] }
    }
    return $records
}

function Read-WriteTrace([string]$path) {
    $records = @()
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $records += Convert-Hex (($line -split "`t")[0])
    }
    return $records
}

$exec = Read-BankedTrace $ExecPath
$reads = Read-BankedTrace $ReadPath
$writes = Read-WriteTrace $WritePath
$checks = @()
foreach ($line in Get-Content -LiteralPath $ConfigPath) {
    if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
    $columns = $line -split "`t"
    if ($columns.Count -ne 6) { throw "invalid runtime path row: $line" }
    $start = Convert-Hex $columns[3]
    $endExclusive = Convert-Hex $columns[4]
    if ($columns[1] -eq 'write') {
        $hits = @($writes | Where-Object { $_ -ge $start -and $_ -lt $endExclusive }).Count
    } else {
        $bank = Convert-Hex $columns[2]
        $source = if ($columns[1] -eq 'exec') { $exec } elseif ($columns[1] -eq 'read') { $reads } else { throw "invalid trace source: $($columns[1])" }
        $hits = @($source | Where-Object { $_.Bank -eq $bank -and $_.Address -ge $start -and $_.Address -lt $endExclusive }).Count
    }
    $checks += [pscustomobject]@{ Path = $columns[0]; Source = $columns[1]; Range = "$($columns[2]):$($columns[3])-$($columns[4])"; Hits = $hits; Evidence = $columns[5] }
}

$report = @('# Runtime Path Evidence', '')
foreach ($check in $checks) {
    $status = if ($check.Hits -gt 0) { 'PASS' } else { 'MISSING' }
    $report += "- **$($check.Path)** [$status]: $($check.Source) $($check.Range), $($check.Hits) observed addresses. $($check.Evidence)"
}
$report | Set-Content -LiteralPath $ReportPath -Encoding UTF8

$missing = @($checks | Where-Object { $_.Hits -eq 0 })
if ($missing.Count -gt 0) {
    $names = ($missing | ForEach-Object { "$($_.Path)/$($_.Source)" }) -join ', '
    throw "runtime path evidence is missing: $names"
}

Write-Output "Runtime path verification passed: $($checks.Count) evidence checks across $(@($checks.Path | Sort-Object -Unique).Count) paths"