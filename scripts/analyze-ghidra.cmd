@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0analyze-ghidra.ps1" %*
exit /b %ERRORLEVEL%