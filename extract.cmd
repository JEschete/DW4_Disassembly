@echo off
setlocal
set "ROM=%~1"
if "%ROM%"=="" set "ROM=%DW4_ROM%"
if "%ROM%"=="" (
	echo Reference ROM path is required. Pass it as the first argument or set DW4_ROM. 1>&2
	exit /b 1
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\ensure-da65.ps1"
if errorlevel 1 exit /b %ERRORLEVEL%
dotnet run --project "%~dp0tools\Dw4Tool\Dw4Tool.csproj" --configuration Release -- extract "%ROM%" "%~dp0."
exit /b %ERRORLEVEL%