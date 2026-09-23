param(
    [Parameter(Mandatory = $true)]
    [string]$Shard,
    [Parameter(Mandatory = $true)]
    [string]$Banks,
    [string]$Rom,
    [string]$GhidraHome
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
. (Join-Path $PSScriptRoot 'common.ps1')
$Rom = Resolve-Dw4RomPath $Rom
$GhidraHome = Resolve-Dw4GhidraHome $GhidraHome
$ghidraHome = $GhidraHome
$headless = Join-Path $ghidraHome 'support\analyzeHeadless.bat'
$workRoot = Join-Path $projectRoot "work\ghidra-shards\$Shard"
$scriptPath = Join-Path $PSScriptRoot 'ghidra'
$seedPath = Join-Path $projectRoot 'config\code-seeds.tsv'
$runtimeSeedPath = Join-Path $projectRoot 'analysis\fceux-exec.tsv'
$entryTablePath = Join-Path $projectRoot 'config\code-entry-tables.tsv'
$entryPointerPath = Join-Path $projectRoot 'config\code-entry-pointers.tsv'
$exclusionPath = Join-Path $projectRoot 'config\code-exclusions.tsv'
$outputPath = Join-Path $projectRoot "analysis\ghidra-shards\$Shard.tsv"
$workingRom = Join-Path $workRoot 'input.nes'
$seedBinary = Join-Path $workRoot 'bank_1F.bin'
$projectName = 'dw4-' + $Shard + '-' + [Guid]::NewGuid().ToString('N')

$bankValues = @($Banks.Split(',') | ForEach-Object {
    $value = $_.Trim().ToUpperInvariant()
    if ($value -notmatch '^[0-9A-F]{2}$' -or [Convert]::ToInt32($value, 16) -ge 32) {
        throw "Invalid physical bank '$value'"
    }
    $value
} | Sort-Object -Unique)
if ($bankValues.Count -eq 0) {
    throw 'At least one physical bank is required'
}
$bankList = $bankValues -join '_'

foreach ($required in @($Rom, $headless, $seedPath, $runtimeSeedPath, $entryTablePath, $entryPointerPath, $exclusionPath)) {
    if (-not (Test-Path -LiteralPath $required)) {
        throw "Required file not found: $required"
    }
}

New-Item -ItemType Directory -Force -Path $workRoot | Out-Null
New-Item -ItemType Directory -Force -Path (Split-Path -Parent $outputPath) | Out-Null
Copy-Item -LiteralPath $Rom -Destination $workingRom -Force

$romBytes = [IO.File]::ReadAllBytes($workingRom)
if ($romBytes.Length -ne 0x80010) {
    throw "Expected a 524,304-byte ROM, got $($romBytes.Length) bytes"
}
[byte[]]$fixedBank = New-Object byte[] 0x4000
[Array]::Copy($romBytes, 0x7C010, $fixedBank, 0, 0x4000)
[IO.File]::WriteAllBytes($seedBinary, $fixedBank)

$arguments = @(
    $workRoot,
    $projectName,
    '-import', $seedBinary,
    '-loader', 'BinaryLoader',
    '-loader-baseAddr', '0xC000',
    '-loader-blockName', 'PRG31',
    '-processor', '6502:LE:16:default',
    '-cspec', 'default',
    '-scriptPath', $scriptPath,
    '-preScript', 'CreateDw4Memory.java', $workingRom,
    '-preScript', 'SeedBankCode.java', $seedPath, $runtimeSeedPath, $bankList,
    '-preScript', 'SeedEntryTables.java', $entryTablePath, $entryPointerPath, $exclusionPath, $bankList,
    '-postScript', 'ExportBankCode.java', $outputPath, $exclusionPath, $bankList,
    '-analysisTimeoutPerFile', '600',
    '-deleteProject'
)

$previousConfigHome = $env:XDG_CONFIG_HOME
$previousCacheHome = $env:XDG_CACHE_HOME
$env:XDG_CONFIG_HOME = Join-Path $workRoot 'config'
$env:XDG_CACHE_HOME = Join-Path $workRoot 'cache'
try {
    & $headless @arguments
    if ($LASTEXITCODE -ne 0) {
        throw "Ghidra shard '$Shard' failed with exit code $LASTEXITCODE"
    }
}
finally {
    $env:XDG_CONFIG_HOME = $previousConfigHome
    $env:XDG_CACHE_HOME = $previousCacheHome
}

if (-not (Test-Path -LiteralPath $outputPath)) {
    throw "Ghidra shard '$Shard' did not create $outputPath"
}

$rangeCount = @(Get-Content -LiteralPath $outputPath | Where-Object {
    -not [string]::IsNullOrWhiteSpace($_) -and -not $_.StartsWith('#')
}).Count
Write-Host "Ghidra shard '$Shard' wrote $rangeCount ranges for banks $bankList to $outputPath"