@echo off
setlocal
set "VSWHERE=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe"
if not exist "%VSWHERE%" set "VSWHERE=vswhere.exe"
set "MSBUILD="
for /f "usebackq delims=" %%I in (`"%VSWHERE%" -latest -products * -requires Microsoft.Component.MSBuild -find MSBuild\**\Bin\MSBuild.exe 2^>nul`) do if not defined MSBUILD set "MSBUILD=%%I"

if not defined MSBUILD (
    echo MSBuild was not found. Install Visual Studio 2026 with the Desktop development with C++ workload. 1>&2
    exit /b 1
)

"%MSBUILD%" "%~dp0DragonWarrior4.sln" /m /restore /p:Configuration=Release /p:Platform=x64
exit /b %ERRORLEVEL%