param(
    [string]$Rom,
    [ValidateRange(60, 36000)]
    [int]$Frames = 1800,
    [ValidateSet('startup', 'banking', 'menus', 'maps', 'battle', 'text', 'save-load', 'audio', 'graphics', 'explore', 'buttons', 'wander', 'hunt-assets', 'seek-world')]
    [string]$TraceMode = 'explore',
    [switch]$Visible,
    [string]$Fceux,
    [string]$FceuxConfig
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
. (Join-Path $PSScriptRoot 'common.ps1')
$Rom = Resolve-Dw4RomPath $Rom
$fceux = Resolve-Dw4FceuxPath $Fceux
$baseConfig = Resolve-Dw4FceuxConfig $FceuxConfig $fceux
$luaScript = Join-Path $PSScriptRoot 'fceux\trace-dw4.lua'
$workRoot = Join-Path $projectRoot 'work\fceux'
$workingRom = Join-Path $workRoot 'input.nes'
$configPath = Join-Path $workRoot 'fceux.cfg'
$traceLauncherPath = Join-Path $workRoot 'trace-launch.lua'
$outputPath = Join-Path $projectRoot 'analysis\fceux-exec.tsv'
$sessionOutputPath = Join-Path $workRoot 'fceux-exec-current.tsv'
$resumeOutputPath = Join-Path $projectRoot 'analysis\fceux-inline-resumes.tsv'
$sessionResumeOutputPath = Join-Path $workRoot 'fceux-inline-resumes-current.tsv'
$readOutputPath = Join-Path $projectRoot 'analysis\fceux-reads.tsv'
$sessionReadOutputPath = Join-Path $workRoot 'fceux-reads-current.tsv'
$writeOutputPath = Join-Path $projectRoot 'analysis\fceux-writes.tsv'
$sessionWriteOutputPath = Join-Path $workRoot 'fceux-writes-current.tsv'
$apiLogPath = Join-Path $workRoot 'lua-api.txt'
$screenshotPath = Join-Path $workRoot 'final-screen.gd'

foreach ($required in @($Rom, $fceux, $baseConfig, $luaScript)) {
    if (-not (Test-Path -LiteralPath $required)) {
        throw "Required file not found: $required"
    }
}

New-Item -ItemType Directory -Force -Path $workRoot | Out-Null
New-Item -ItemType Directory -Force -Path (Split-Path -Parent $outputPath) | Out-Null
Copy-Item -LiteralPath $Rom -Destination $workingRom -Force
Copy-Item -LiteralPath $baseConfig -Destination $configPath -Force

$config = Get-Content -LiteralPath $configPath
$config = $config -replace '^"sound"\s+\d+$', '"sound" 0'
$config = $config -replace '^(sound(?:Noise|PCM|Square1|Square2|Triangle)vol)\s+\d+$', '$1 0'
$config = $config -replace '^soundvolume\s+\d+$', 'soundvolume 0'
$config = $config -replace '^SingleInstanceOnly\s+\d+$', 'SingleInstanceOnly 0'
$config = $config -replace '^EnableAutosave\s+\d+$', 'EnableAutosave 0'
$config = $config -replace '^"odbase".*$', ('"odbase" ' + $workRoot)
$config = $config -replace '^"odnonvol".*$', ('"odnonvol" ' + $workRoot)
$config = $config -replace '^"odstates".*$', ('"odstates" ' + $workRoot)
Set-Content -LiteralPath $configPath -Value $config -Encoding ASCII

$luaOutput = $sessionOutputPath.Replace('\', '/')
$luaResumeOutput = $sessionResumeOutputPath.Replace('\', '/')
$luaReadOutput = $sessionReadOutputPath.Replace('\', '/')
$luaWriteOutput = $sessionWriteOutputPath.Replace('\', '/')
$luaDone = (Join-Path $workRoot 'trace.done').Replace('\', '/')
$luaApiLog = $apiLogPath.Replace('\', '/')
$luaScreenshot = $screenshotPath.Replace('\', '/')
$luaBootstrap = (Join-Path $workRoot 'lua-bootstrap.txt').Replace('\', '/')
$launcherHeader = @"
DW4_TRACE_CONFIG_DATA = {
    frames = $Frames,
    profile = '$TraceMode',
    output = '$luaOutput',
    resume_output = '$luaResumeOutput',
    read_output = '$luaReadOutput',
    write_output = '$luaWriteOutput',
    done = '$luaDone',
    api_log = '$luaApiLog',
    screenshot = '$luaScreenshot',
    bootstrap = '$luaBootstrap'
}
"@
Set-Content -LiteralPath $traceLauncherPath -Value $launcherHeader -Encoding ASCII
Add-Content -LiteralPath $traceLauncherPath -Value (Get-Content -LiteralPath $luaScript -Raw) -Encoding ASCII

Remove-Item -LiteralPath $sessionOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionResumeOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionReadOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionWriteOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath (Join-Path $workRoot 'trace.done') -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $apiLogPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $screenshotPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath (Join-Path $workRoot 'lua-bootstrap.txt') -Force -ErrorAction SilentlyContinue

$arguments = "-sound 0 -cfg `"$configPath`" -lua `"$traceLauncherPath`" `"$workingRom`""
$startParameters = @{
    FilePath = $fceux
    ArgumentList = $arguments
    WorkingDirectory = Split-Path -Parent $fceux
    PassThru = $true
}
if (-not $Visible) {
    $startParameters.WindowStyle = 'Hidden'
}
$process = Start-Process @startParameters
if (-not $process.WaitForExit(180000)) {
    [void]$process.CloseMainWindow()
    if (-not $process.WaitForExit(5000)) {
        $process.Kill()
        [void]$process.WaitForExit(5000)
    }
    throw "FCEUX trace exceeded the three-minute bound"
}

if (-not (Test-Path -LiteralPath $sessionOutputPath)) {
    throw "FCEUX did not create $sessionOutputPath"
}
if (-not (Test-Path -LiteralPath $sessionResumeOutputPath)) {
    throw "FCEUX did not create $sessionResumeOutputPath"
}
if (-not (Test-Path -LiteralPath $sessionReadOutputPath)) {
    throw "FCEUX did not create $sessionReadOutputPath"
}
if (-not (Test-Path -LiteralPath $sessionWriteOutputPath)) {
    throw "FCEUX did not create $sessionWriteOutputPath"
}

$records = @{}
foreach ($path in @($outputPath, $sessionOutputPath)) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $records[$line] = $true
    }
}

$merged = @('# Bank`tCPUAddress') + @($records.Keys | Sort-Object)
Set-Content -LiteralPath $outputPath -Value $merged -Encoding ASCII
Write-Host "Merged FCEUX trace written to $outputPath ($($records.Count) instruction starts)"

$resumeRecords = @{}
foreach ($path in @($resumeOutputPath, $sessionResumeOutputPath)) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $resumeRecords[$line] = $true
    }
}
$mergedResumes = @('# Bank`tCallAddress`tKind`tContinuation') + @($resumeRecords.Keys | Sort-Object)
Set-Content -LiteralPath $resumeOutputPath -Value $mergedResumes -Encoding ASCII
Write-Host "Merged FCEUX call resumes written to $resumeOutputPath ($($resumeRecords.Count) observed returns)"

$readRecords = @{}
foreach ($path in @($readOutputPath, $sessionReadOutputPath)) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $readRecords[$line] = $true
    }
}
$mergedReads = @('# Bank`tCPUAddress') + @($readRecords.Keys | Sort-Object)
Set-Content -LiteralPath $readOutputPath -Value $mergedReads -Encoding ASCII
Write-Host "Merged FCEUX reads written to $readOutputPath ($($readRecords.Count) physical addresses)"

$writeRecords = @{}
foreach ($path in @($writeOutputPath, $sessionWriteOutputPath)) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $writeRecords[$line] = $true
    }
}
$mergedWrites = @('# CPUAddress') + @($writeRecords.Keys | Sort-Object)
Set-Content -LiteralPath $writeOutputPath -Value $mergedWrites -Encoding ASCII
Write-Host "Merged FCEUX writes written to $writeOutputPath ($($writeRecords.Count) SRAM addresses)"