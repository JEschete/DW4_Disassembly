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

    & powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\triage-conflicts.ps1
    if ($LASTEXITCODE -ne 0) { throw "unsupported-opcode classification failed" }

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

    $conflictRows = @((Get-Content config\control-flow-conflicts.tsv) |
        Where-Object { $_ -and -not $_.StartsWith('#') } |
        ConvertFrom-Csv -Delimiter "`t" -Header Bank,Address,Disposition,Source,Reason)
    $conflictKeys = @($conflictRows | ForEach-Object { "$($_.Bank):$($_.Address)" })
    $duplicateConflictKeys = @($conflictKeys | Group-Object | Where-Object Count -gt 1)
    if ($duplicateConflictKeys.Count -ne 0) { throw "$($duplicateConflictKeys.Count) duplicate control-flow conflict audit keys" }
    $invalidConflictDispositions = @($conflictRows | Where-Object { $_.Disposition -ne 'intentional-overlap' })
    if ($invalidConflictDispositions.Count -ne 0) { throw "$($invalidConflictDispositions.Count) invalid control-flow conflict dispositions" }

    $reportedConflictKeys = @()
    $conflictBank = $null
    $readingConflicts = $false
    foreach ($line in Get-Content analysis\code-report.txt) {
        if ($line -match '^Control-flow conflicts: (?<count>\d+)$') {
            $readingConflicts = $true
            continue
        }
        if (-not $readingConflicts) { continue }
        if ($line -match '^Unsupported opcodes / probable data walks:') { break }
        if ($line -match '^  bank \$(?<bank>[0-9A-F]{2}):') {
            $conflictBank = $matches['bank']
            continue
        }
        if ($null -ne $conflictBank -and $line -match '^    \$(?<address>[0-9A-F]{4}): control flow enters an existing instruction operand$') {
            $reportedConflictKeys += "$($conflictBank):$($matches['address'])"
        }
    }
    $reportedConflictKeys = @($reportedConflictKeys | Sort-Object -Unique)
    $missingConflictAudits = @($reportedConflictKeys | Where-Object { $_ -notin $conflictKeys })
    $staleConflictAudits = @($conflictKeys | Where-Object { $_ -notin $reportedConflictKeys })
    if ($missingConflictAudits.Count -ne 0) { throw "$($missingConflictAudits.Count) control-flow conflicts lack audit dispositions" }
    if ($staleConflictAudits.Count -ne 0) { throw "$($staleConflictAudits.Count) control-flow conflict audits no longer match analyzer output" }

    $currentWarningCount = @((Import-Csv analysis\unsupported-opcode-triage.tsv -Delimiter "`t")).Count
    $resolvedWarningCount = @((Get-Content config\resolved-unsupported-opcodes.tsv) | Where-Object { $_ -and -not $_.StartsWith('#') }).Count
    $originalWarningCount = 143
    $originalCurrentCount = $originalWarningCount - $resolvedWarningCount
    if ($currentWarningCount -lt $originalCurrentCount) {
        throw "current warning inventory has fewer than the $originalCurrentCount unresolved cases from the original baseline"
    }
    $additionalWarningCount = $currentWarningCount - $originalCurrentCount

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

    Write-Output "Completion gate passed: $originalWarningCount/$originalWarningCount original warnings and $additionalWarningCount additional recovered-path warnings classified; $pointerCount pointers typed; $decodedCount/$executableCount executable targets decoded; $($decodedIndirectKeys.Count)/$($decodedIndirectKeys.Count) indirect jumps audited; $($reportedConflictKeys.Count)/$($reportedConflictKeys.Count) control-flow conflicts audited; $($interfaces.Count) routine interfaces; $($contracts.Count) semantic contracts; $assetSliceCount asset slices; $saveFieldCount save fields; $runtimePathCount runtime paths; exact ROM match."
}
finally {
    Pop-Location
}