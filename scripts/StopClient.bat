@echo off

cd /d "%~dp0"

call Config.bat

@REM ================================================================

tasklist | find /i "%ExecutableDayZClient%" > nul && Taskkill /F /IM "%ExecutableDayZClient%"

@REM pause
