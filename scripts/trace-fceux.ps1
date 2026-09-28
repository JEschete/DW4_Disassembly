param(
    [string]$Rom,
    [ValidateRange(60, 36000)]
    [int]$Frames = 1800,
    [ValidateSet('startup', 'banking', 'menus', 'maps', 'battle', 'combat-walk', 'ui-fuzz', 'text', 'save-load', 'audio', 'graphics', 'explore', 'buttons', 'wander', 'hunt-assets', 'seek-world', 'fight', 'script')]
    [string]$TraceMode = 'explore',
    [switch]$Visible,
    [string]$Fceux,
    [string]$FceuxConfig,
    [string]$StateArchive,
    [ValidateRange(-1, 9)]
    [int]$StateSlot = -1,
    [ValidateRange(60, 3600)]
    [int]$TimeoutSeconds = 180,
    [string]$InputScript,
    [switch]$BatteryOnly
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
$workingSave = Join-Path $workRoot 'input.sav'
$workingState = Join-Path $workRoot 'input.fc1'
$configPath = Join-Path $workRoot 'fceux.cfg'
$traceLauncherPath = Join-Path $workRoot 'trace-launch.lua'
$outputPath = Join-Path $projectRoot 'analysis\fceux-exec.tsv'
$sessionOutputPath = Join-Path $workRoot 'fceux-exec-current.tsv'
$resumeOutputPath = Join-Path $projectRoot 'analysis\fceux-inline-resumes.tsv'
$sessionResumeOutputPath = Join-Path $workRoot 'fceux-inline-resumes-current.tsv'
$readOutputPath = Join-Path $projectRoot 'analysis\fceux-reads.tsv'
$sessionReadOutputPath = Join-Path $workRoot 'fceux-reads-current.tsv'
$readSourceOutputPath = Join-Path $projectRoot 'analysis\fceux-read-sources.tsv'
$sessionReadSourceOutputPath = Join-Path $workRoot 'fceux-read-sources-current.tsv'
$writeOutputPath = Join-Path $projectRoot 'analysis\fceux-writes.tsv'
$sessionWriteOutputPath = Join-Path $workRoot 'fceux-writes-current.tsv'
$observationOutputPath = Join-Path $projectRoot 'analysis\fceux-observations.tsv'
$sessionObservationOutputPath = Join-Path $workRoot 'fceux-observations-current.tsv'
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

$loadState = $false
$stateDescription = ''
Remove-Item -LiteralPath $workingSave, $workingState, (Join-Path $workRoot 'input.fc0') -Force -ErrorAction SilentlyContinue
if (-not [string]::IsNullOrWhiteSpace($StateArchive)) {
    $resolvedStateArchive = (Resolve-Path -LiteralPath $StateArchive).Path
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $archive = [IO.Compression.ZipFile]::OpenRead($resolvedStateArchive)
    try {
        $saveEntries = @($archive.Entries | Where-Object { $_.Name -match '\.sav$' })
        $stateEntries = @($archive.Entries | Where-Object { $_.Name -match '\.fc[0-9]$' })
        if ($saveEntries.Count -ne 1 -or $stateEntries.Count -eq 0) {
            throw "State archive must contain exactly one .sav and at least one .fcN file: $resolvedStateArchive"
        }
        if ($StateSlot -ge 0) {
            $stateEntries = @($stateEntries | Where-Object { $_.Name -match "\.fc$StateSlot$" })
            if ($stateEntries.Count -ne 1) {
                throw "State archive does not contain exactly one .fc$StateSlot file: $resolvedStateArchive"
            }
        } else {
            $stateEntries = @($stateEntries | Sort-Object Name | Select-Object -First 1)
        }

        foreach ($item in @(
            @{ Entry = $saveEntries[0]; Destination = $workingSave },
            @{ Entry = $stateEntries[0]; Destination = $workingState }
        )) {
            $sourceStream = $item.Entry.Open()
            $destinationStream = [IO.File]::Create($item.Destination)
            try {
                $sourceStream.CopyTo($destinationStream)
            } finally {
                $destinationStream.Dispose()
                $sourceStream.Dispose()
            }
        }
        # -BatteryOnly boots from power-on with the archived battery RAM so title-screen adventure-log
        # menus run against real saved logs; the snapshot itself is not loaded.
        $loadState = -not $BatteryOnly
        if ($BatteryOnly) { Remove-Item -LiteralPath $workingState -Force }
        $stateDescription = if ($BatteryOnly) { "$($resolvedStateArchive.Replace('\', '/'))::battery-only" } else { "$($resolvedStateArchive.Replace('\', '/'))::$($stateEntries[0].FullName)" }
    } finally {
        $archive.Dispose()
    }
}

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
$luaReadSourceOutput = $sessionReadSourceOutputPath.Replace('\', '/')
$luaWriteOutput = $sessionWriteOutputPath.Replace('\', '/')
$luaObservationOutput = $sessionObservationOutputPath.Replace('\', '/')
$luaDone = (Join-Path $workRoot 'trace.done').Replace('\', '/')
$luaApiLog = $apiLogPath.Replace('\', '/')
$luaScreenshot = $screenshotPath.Replace('\', '/')
$luaInputScript = ''
if ($TraceMode -eq 'script') {
    if ([string]::IsNullOrWhiteSpace($InputScript)) { throw 'The script trace mode requires -InputScript' }
    $luaInputScript = (Resolve-Path -LiteralPath $InputScript).Path.Replace('\', '/')
}
$luaRom = $workingRom.Replace('\', '/')
$luaBootstrap = (Join-Path $workRoot 'lua-bootstrap.txt').Replace('\', '/')
$launcherHeader = @"
DW4_TRACE_CONFIG_DATA = {
    frames = $Frames,
    profile = '$TraceMode',
    output = '$luaOutput',
    resume_output = '$luaResumeOutput',
    read_output = '$luaReadOutput',
    read_source_output = '$luaReadSourceOutput',
    write_output = '$luaWriteOutput',
    observation_output = '$luaObservationOutput',
    done = '$luaDone',
    api_log = '$luaApiLog',
    screenshot = '$luaScreenshot',
    input_script = '$luaInputScript',
    snapshot_prefix = '$($workRoot.Replace('\', '/'))/snapshot',
    bootstrap = '$luaBootstrap',
    rom = '$luaRom',
    load_state = $($loadState.ToString().ToLowerInvariant()),
    state_description = '$($stateDescription.Replace("'", "\\'"))'
}
"@
Set-Content -LiteralPath $traceLauncherPath -Value $launcherHeader -Encoding ASCII
Add-Content -LiteralPath $traceLauncherPath -Value (Get-Content -LiteralPath $luaScript -Raw) -Encoding ASCII

Remove-Item -LiteralPath $sessionOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionResumeOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionReadOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionReadSourceOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionWriteOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $sessionObservationOutputPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath (Join-Path $workRoot 'trace.done') -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $apiLogPath -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $screenshotPath -Force -ErrorAction SilentlyContinue
Get-ChildItem -LiteralPath $workRoot -Filter 'snapshot-*.gd' | Remove-Item -Force
Remove-Item -LiteralPath (Join-Path $workRoot 'lua-bootstrap.txt') -Force -ErrorAction SilentlyContinue

$stateArgument = if ($loadState) { " -loadstate `"$workingState`"" } else { '' }
$arguments = "-sound 0 -cfg `"$configPath`"$stateArgument -lua `"$traceLauncherPath`" `"$workingRom`""
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
if (-not $process.WaitForExit($TimeoutSeconds * 1000)) {
    [void]$process.CloseMainWindow()
    if (-not $process.WaitForExit(5000)) {
        $process.Kill()
        [void]$process.WaitForExit(5000)
    }
    throw "FCEUX trace exceeded the $TimeoutSeconds-second bound"
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
if (-not (Test-Path -LiteralPath $sessionReadSourceOutputPath)) {
    throw "FCEUX did not create $sessionReadSourceOutputPath"
}
if (-not (Test-Path -LiteralPath $sessionWriteOutputPath)) {
    throw "FCEUX did not create $sessionWriteOutputPath"
}
if (-not (Test-Path -LiteralPath $sessionObservationOutputPath)) {
    throw "FCEUX did not create $sessionObservationOutputPath"
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

$readSourceRecords = @{}
foreach ($path in @($readSourceOutputPath, $sessionReadSourceOutputPath)) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $readSourceRecords[$line] = $true
    }
}
$mergedReadSources = @("# ReadBank`tReadAddress`tPCBank`tPCAddress") + @($readSourceRecords.Keys | Sort-Object)
Set-Content -LiteralPath $readSourceOutputPath -Value $mergedReadSources -Encoding ASCII
Write-Host "Merged FCEUX read sources written to $readSourceOutputPath ($($readSourceRecords.Count) source pairs)"

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

$observationRecords = @{}
foreach ($path in @($observationOutputPath, $sessionObservationOutputPath)) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    foreach ($line in Get-Content -LiteralPath $path) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith('#')) { continue }
        $observationRecords[$line] = $true
    }
}
$observationHeader = "# Bank`tCPUAddress`tA`tX`tY`tP`t75E8`t75F3`t75F4`t75F5`t6E0F`t6E59`t62D5`tC4`tF3`tF8`t03DC"
$mergedObservations = @($observationHeader) + @($observationRecords.Keys | Sort-Object)
Set-Content -LiteralPath $observationOutputPath -Value $mergedObservations -Encoding ASCII
Write-Host "Merged FCEUX observations written to $observationOutputPath ($($observationRecords.Count) distinct states)"