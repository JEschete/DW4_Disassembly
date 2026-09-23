$ErrorActionPreference = 'Stop'

function Resolve-Dw4RomPath {
    param([string]$Path)

    if ([string]::IsNullOrWhiteSpace($Path)) {
        $Path = $env:DW4_ROM
    }
    if ([string]::IsNullOrWhiteSpace($Path)) {
        throw 'Reference ROM path is required. Pass -Rom or set DW4_ROM.'
    }
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        throw "Reference ROM not found: $Path"
    }
    return (Resolve-Path -LiteralPath $Path).Path
}

function Resolve-Dw4GhidraHome {
    param([string]$Path)

    if ([string]::IsNullOrWhiteSpace($Path)) {
        $Path = $env:GHIDRA_HOME
    }
    if ([string]::IsNullOrWhiteSpace($Path)) {
        throw 'Ghidra home is required. Pass -GhidraHome or set GHIDRA_HOME.'
    }
    $headless = Join-Path $Path 'support\analyzeHeadless.bat'
    if (-not (Test-Path -LiteralPath $headless -PathType Leaf)) {
        throw "Ghidra analyzeHeadless.bat not found under: $Path"
    }
    return (Resolve-Path -LiteralPath $Path).Path
}

function Resolve-Dw4FceuxPath {
    param([string]$Path)

    if ([string]::IsNullOrWhiteSpace($Path)) {
        $Path = $env:DW4_FCEUX
    }
    if ([string]::IsNullOrWhiteSpace($Path)) {
        foreach ($name in @('fceux64.exe', 'fceux.exe')) {
            $command = Get-Command $name -ErrorAction SilentlyContinue
            if ($null -ne $command) {
                $Path = $command.Source
                break
            }
        }
    }
    if ([string]::IsNullOrWhiteSpace($Path) -or -not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        throw 'FCEUX executable is required. Pass -Fceux, set DW4_FCEUX, or add it to PATH.'
    }
    return (Resolve-Path -LiteralPath $Path).Path
}

function Resolve-Dw4FceuxConfig {
    param(
        [string]$Path,
        [string]$Fceux
    )

    if ([string]::IsNullOrWhiteSpace($Path)) {
        $Path = $env:DW4_FCEUX_CONFIG
    }
    if ([string]::IsNullOrWhiteSpace($Path)) {
        $Path = Join-Path (Split-Path -Parent $Fceux) 'fceux.cfg'
    }
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        throw "FCEUX configuration not found: $Path"
    }
    return (Resolve-Path -LiteralPath $Path).Path
}