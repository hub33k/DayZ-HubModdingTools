@echo off

cd /d "%~dp0"

call Config.bat

@REM ================================================================

call StopClient.bat

cd /d %PathClient%

echo Starting DayZ CLIENT: %ExecutableDayZClient%
echo Args:
echo %ClientArgs%
start "DayZ CLIENT" "%ExecutableDayZClient%" %ClientArgs%

pause
