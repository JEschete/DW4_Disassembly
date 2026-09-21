@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0trace-fceux.ps1" %*
exit /b %ERRORLEVEL%