@echo off

cd /d "%~dp0"

call Config.bat

@REM ================================================================

tasklist | find /i "%ExecutableWorkbench%" > nul && Taskkill /F /IM "%ExecutableWorkbench%"

@REM pause
