@echo off
setlocal
set "ROM=%~1"
if "%ROM%"=="" set "ROM=F:\NES\Dragon Warrior IV (USA).nes"

dotnet run --project "%~dp0tools\Dw4Tool\Dw4Tool.csproj" --configuration Release -- extract "%ROM%" "%~dp0."
exit /b %ERRORLEVEL%