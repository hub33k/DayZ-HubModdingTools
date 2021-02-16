@echo off

cd /d "%~dp0"

call Config.bat

@REM ================================================================

call StopServer.bat

cd /d %PathServer%

echo Starting DayZ SERVER: %ExecutableDayZServer%
echo Args:
echo %ServerArgs%
start "DayZ SERVER" "%ExecutableDayZServer%" %ServerArgs%


pause
