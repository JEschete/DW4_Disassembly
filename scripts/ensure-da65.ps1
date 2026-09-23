param(
    [ValidateSet('Debug', 'Release')]
    [string]$Configuration = 'Release'
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
$cc65Root = Join-Path $projectRoot 'third_party\cc65'
$sourceRoot = Join-Path $cc65Root 'src'
$commonProject = Join-Path $sourceRoot 'common.vcxproj'
$da65Project = Join-Path $sourceRoot 'da65.vcxproj'
$outputDirectory = Join-Path $projectRoot 'tools\da65'
$outputPath = Join-Path $outputDirectory 'da65.exe'
$workRoot = Join-Path $projectRoot 'work\cc65'

foreach ($required in @($commonProject, $da65Project)) {
    if (-not (Test-Path -LiteralPath $required -PathType Leaf)) {
        throw 'cc65 submodule is missing. Run: git submodule update --init --recursive'
    }
}

$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
$msbuild = $null
if (Test-Path -LiteralPath $vswhere) {
    $msbuild = & $vswhere -latest -products * -requires Microsoft.Component.MSBuild -find 'MSBuild\**\Bin\MSBuild.exe' |
        Select-Object -First 1
}
if ([string]::IsNullOrWhiteSpace($msbuild)) {
    $command = Get-Command msbuild.exe -ErrorAction SilentlyContinue
    if ($null -ne $command) { $msbuild = $command.Source }
}
if ([string]::IsNullOrWhiteSpace($msbuild)) {
    throw 'MSBuild was not found. Install Visual Studio with the Desktop development with C++ workload.'
}

$commonIntermediate = Join-Path $workRoot "common\$Configuration\"
$da65Intermediate = Join-Path $workRoot "da65\$Configuration\"
New-Item -ItemType Directory -Force -Path $commonIntermediate, $da65Intermediate, $outputDirectory | Out-Null

& $msbuild $commonProject /nologo /m /restore "/p:Configuration=$Configuration" /p:Platform=x64 /p:PlatformToolset=v145 "/p:IntDir=$commonIntermediate"
if ($LASTEXITCODE -ne 0) { throw 'cc65 common library build failed' }

& $msbuild $da65Project /nologo /m /restore "/p:Configuration=$Configuration" /p:Platform=x64 /p:PlatformToolset=v145 "/p:IntDir=$da65Intermediate" "/p:OutDir=$outputDirectory\"
if ($LASTEXITCODE -ne 0) { throw 'da65 build failed' }
if (-not (Test-Path -LiteralPath $outputPath -PathType Leaf)) {
    throw "da65 build did not create $outputPath"
}

Write-Host "da65 ready: $outputPath"