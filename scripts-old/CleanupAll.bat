@echo off

cd /d "%~dp0"

call Config.bat

@REM ================================================================

call StopClient.bat
call StopServer.bat

call WipeServer.bat
call ClearLogs.bat

pause
