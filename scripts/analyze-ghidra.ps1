param(
    [string]$Rom = 'F:\NES\Dragon Warrior IV (USA).nes'
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
$ghidraHome = 'C:\Tools\Base\Analysis\Ghidra\12.1.3'
$headless = Join-Path $ghidraHome 'support\analyzeHeadless.bat'
$workRoot = Join-Path $projectRoot 'work\ghidra'
$scriptPath = Join-Path $PSScriptRoot 'ghidra'
$seedPath = Join-Path $projectRoot 'config\code-seeds.tsv'
$runtimeSeedPath = Join-Path $projectRoot 'analysis\fceux-exec.tsv'
$entryTablePath = Join-Path $projectRoot 'config\code-entry-tables.tsv'
$exclusionPath = Join-Path $projectRoot 'config\code-exclusions.tsv'
$outputPath = Join-Path $projectRoot 'analysis\ghidra-code-ranges.tsv'
$workingRom = Join-Path $workRoot 'input.nes'
$seedBinary = Join-Path $workRoot 'bank_1F.bin'
$projectName = 'dw4-' + [Guid]::NewGuid().ToString('N')

foreach ($required in @($Rom, $headless, $seedPath)) {
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
    '-preScript', 'SeedBankCode.java', $seedPath, $runtimeSeedPath,
    '-preScript', 'SeedEntryTables.java', $entryTablePath, $exclusionPath,
    '-postScript', 'ExportBankCode.java', $outputPath, $exclusionPath,
    '-analysisTimeoutPerFile', '600',
    '-deleteProject'
)

& $headless @arguments
if ($LASTEXITCODE -ne 0) {
    throw "Ghidra headless analysis failed with exit code $LASTEXITCODE"
}

if (-not (Test-Path -LiteralPath $outputPath)) {
    throw "Ghidra did not create $outputPath"
}

Write-Host "Ghidra instruction ranges written to $outputPath"