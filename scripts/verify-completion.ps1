param(
    [string]$Rom
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
. (Join-Path $PSScriptRoot 'common.ps1')
$Rom = Resolve-Dw4RomPath $Rom
Push-Location $projectRoot
try {
    & dotnet run --project tools\Dw4Tool\Dw4Tool.csproj --configuration Release -- asset-verify $Rom $projectRoot
    if ($LASTEXITCODE -ne 0) { throw "asset round-trip verification failed" }

    & cmd.exe /d /c .\extract.cmd $Rom
    if ($LASTEXITCODE -ne 0) { throw "exact-source extraction failed" }

    & powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\verify-runtime-paths.ps1
    if ($LASTEXITCODE -ne 0) { throw "runtime path verification failed" }

    & powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\verify-save-ram.ps1
    if ($LASTEXITCODE -ne 0) { throw "save RAM verification failed" }

    $oldLabels = @(Get-ChildItem src\banks\bank_*.asm | Select-String -Pattern '^Bank[0-9A-F]{2}_Code_[0-9A-F]{4}:')
    if ($oldLabels.Count -ne 0) { throw "$($oldLabels.Count) legacy generated code labels remain" }

    $undecodedTargets = @(Select-String -Path analysis\entry-point-report.txt -Pattern 'NOT DECODED')
    if ($undecodedTargets.Count -ne 0) { throw "$($undecodedTargets.Count) entry-table targets remain undecoded" }
    $pointerSummary = Get-Content analysis\entry-point-report.txt | Select-String -Pattern '^Pointer entries: (?<count>\d+)$'
    $decodedSummary = Get-Content analysis\entry-point-report.txt | Select-String -Pattern '^Executable targets decoded: (?<decoded>\d+) / (?<total>\d+)$'
    if ($null -eq $pointerSummary -or $null -eq $decodedSummary) { throw "entry-point report summary is missing" }
    $pointerCount = [int]$pointerSummary.Matches[0].Groups['count'].Value
    $decodedCount = [int]$decodedSummary.Matches[0].Groups['decoded'].Value
    $executableCount = [int]$decodedSummary.Matches[0].Groups['total'].Value
    if ($decodedCount -ne $executableCount) { throw "$($executableCount - $decodedCount) executable targets remain undecoded" }

    $indirectRows = @((Get-Content config\indirect-jumps.tsv) |
        Where-Object { $_ -and -not $_.StartsWith('#') } |
        ConvertFrom-Csv -Delimiter "`t" -Header Bank,Address,Disposition,Source,Reason)
    $indirectKeys = @($indirectRows | ForEach-Object { "$($_.Bank):$($_.Address)" })
    $duplicateIndirectKeys = @($indirectKeys | Group-Object | Where-Object Count -gt 1)
    if ($duplicateIndirectKeys.Count -ne 0) { throw "$($duplicateIndirectKeys.Count) duplicate indirect-jump audit keys" }
    $invalidDispositions = @($indirectRows | Where-Object {
        $_.Disposition -notin @('registered', 'static-trap', 'hardware-open-bus', 'false-positive-data')
    })
    if ($invalidDispositions.Count -ne 0) { throw "$($invalidDispositions.Count) invalid indirect-jump dispositions" }

    $decodedIndirectKeys = @(
        Get-ChildItem src\banks\bank_*.asm | Select-String -Pattern '^\s*jmp\s+\([^)]*\).*;\s*(?<address>[0-9A-F]{4})\s+6C' |
        ForEach-Object {
            if ($_.Path -match 'bank_(?<bank>[0-9A-F]{2})\.asm$') {
                "$($matches['bank']):$($_.Matches[0].Groups['address'].Value)"
            }
        } | Sort-Object -Unique)
    $missingIndirectAudits = @($decodedIndirectKeys | Where-Object { $_ -notin $indirectKeys })
    $staleIndirectAudits = @($indirectKeys | Where-Object { $_ -notin $decodedIndirectKeys })
    if ($missingIndirectAudits.Count -ne 0) { throw "$($missingIndirectAudits.Count) decoded indirect jumps lack audit dispositions" }
    if ($staleIndirectAudits.Count -ne 0) { throw "$($staleIndirectAudits.Count) indirect-jump audits no longer match decoded instructions" }

    # Extraction validates every analyzer warning, including control-flow conflicts, by identity against
    # config\analyzer-warning-ledger.tsv and fails on any new, vanished, or stale entry.
    $warningReport = Get-Content analysis\analyzer-warning-report.md
    $currentWarnings = $warningReport | Select-String -Pattern '^Current analyzer warnings: (?<count>\d+)$'
    $originalWarnings = $warningReport | Select-String -Pattern '^Original inventory: (?<total>\d+) warnings; (?<current>\d+) current, (?<resolved>\d+) resolved$'
    $ledgerIdentities = $warningReport | Select-String -Pattern '^Ledger identities: (?<count>\d+)$'
    if ($null -eq $currentWarnings -or $null -eq $originalWarnings -or $null -eq $ledgerIdentities) { throw "analyzer warning report summary is missing" }
    $currentWarningCount = [int]$currentWarnings.Matches[0].Groups['count'].Value
    $originalWarningCount = [int]$originalWarnings.Matches[0].Groups['total'].Value
    $ledgerCount = [int]$ledgerIdentities.Matches[0].Groups['count'].Value

    $contracts = @(Select-String -Path analysis\routine-contracts.md -Pattern '^## ')
    if ($contracts.Count -eq 0) { throw "no validated routine contracts were generated" }
    $interfaces = @(Import-Csv analysis\routine-interfaces.tsv -Delimiter "`t")
    $interfaceKeys = @($interfaces | ForEach-Object { "$($_.Bank):$($_.Address)" })
    $entryTargets = @((Get-Content analysis\entry-point-report.txt) | Select-String -Pattern '\[(?:local|fixed)-bank-code, decoded\]' | ForEach-Object {
        if ($_.Line -match 'bank \$([0-9A-F]{2}):\$([0-9A-F]{4})') { "$($matches[1]):$($matches[2])" }
    } | Sort-Object -Unique)
    $missingEntryInterfaces = @($entryTargets | Where-Object { $_ -notin $interfaceKeys })
    if ($missingEntryInterfaces.Count -ne 0) {
        throw "routine interface inventory is missing $($missingEntryInterfaces.Count) executable table targets"
    }
    $runtimePathCount = @((Get-Content config\runtime-paths.tsv) | Where-Object { $_ -and -not $_.StartsWith('#') } | ForEach-Object { ($_ -split "`t")[0] } | Sort-Object -Unique).Count
    $saveFieldCount = @((Get-Content config\save-ram.tsv) | Where-Object { $_ -and -not $_.StartsWith('#') }).Count
    $assetSliceCount = @((Get-Content config\asset-ranges.tsv) | Where-Object { $_ -and -not $_.StartsWith('#') }).Count

    & cmd.exe /d /c .\build.cmd
    if ($LASTEXITCODE -ne 0) { throw "exact ROM rebuild failed" }

    Write-Output "Completion gate passed: $currentWarningCount current analyzer warnings; $ledgerCount warning identities ledgered, including all $originalWarningCount original warnings; $pointerCount pointers typed; $decodedCount/$executableCount executable targets decoded; $($decodedIndirectKeys.Count)/$($decodedIndirectKeys.Count) indirect jumps audited; $($interfaces.Count) routine interfaces; $($contracts.Count) semantic contracts; $assetSliceCount asset slices; $saveFieldCount save fields; $runtimePathCount runtime paths; exact ROM match."
}
finally {
    Pop-Location
}