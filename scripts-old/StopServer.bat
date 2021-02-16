@echo off

cd /d "%~dp0"

call Config.bat

@REM ================================================================

tasklist | find /i "%ExecutableDayZServer%" > nul && Taskkill /F /IM "%ExecutableDayZServer%"

@REM pause
