param(
    [string]$Rom = 'F:\NES\Dragon Warrior IV (USA).nes',
    [ValidateRange(60, 36000)]
    [int]$Frames = 1800,
    [ValidateSet('explore', 'buttons', 'wander', 'hunt-assets', 'seek-world')]
    [string]$Profile = 'explore',
    [switch]$Visible
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
$fceux = Join-Path $projectRoot 'tools\fceux\fceux64.exe'
$baseConfig = 'C:\Tools\Systems\NES\Emulators\FCEUX-2.6.6\fceux.cfg'
$luaScript = Join-Path $PSScriptRoot 'fceux\trace-dw4.lua'
$workRoot = Join-Path $projectRoot 'work\fceux'
$workingRom = Join-Path $workRoot 'input.nes'
$configPath = Join-Path $workRoot 'fceux.cfg'
$traceLauncherPath = Join-Path $workRoot 'trace-launch.lua'
$outputPath = Join-Path $projectRoot 'analysis\fceux-exec.tsv'
$sessionOutputPath = Join-Path $workRoot 'fceux-exec-current.tsv'
$readOutputPath = Join-Path $projectRoot 'analysis\fceux-reads.tsv'
$sessionReadOutputPath = Join-Path $workRoot 'fceux-reads-current.tsv'
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
$luaReadOutput = $sessionReadOutputPath.Replace('\', '/')
$luaDone = (Join-Path $workRoot 'trace.done').Replace('\', '/')
$luaApiLog = $apiLogPath.Replace('\', '/')
$luaScreenshot = $screenshotPath.Replace('\', '/')
$launcherHeader = @"
DW4_TRACE_CONFIG_DATA = {
    frames = $Frames,
    profile = '$Profile',
    output = '$luaOutput',
    read_output = '$luaReadOutput',
    done = '$luaDone',
    api_log = '$luaApiLog',
    screenshot = '$luaScreenshot'
}
"@
Set-Content -LiteralPath $traceLauncherPath -Value $launcherHeader -Encoding ASCII
Add-Content -LiteralPath $traceLauncherPath -Value (Get-Content -LiteralPath $luaScript -Raw) -Encoding ASCII

Remove-Item -LiteralPath $sessionOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionReadOutputPath -Force -ErrorAction SilentlyContinue
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
if (-not (Test-Path -LiteralPath $sessionReadOutputPath)) {
    throw "FCEUX did not create $sessionReadOutputPath"
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