@echo off

cd /d "%~dp0"

call Config.bat

@REM ================================================================

call StopWorkbench.bat

cd /d %PathDayZWorkbench%

echo Starting DayZ WORKBENCH: %ExecutableWorkbench%
echo Args:
echo %WorkbenchArgs%
start "DayZ WORKBENCH" "%ExecutableWorkbench%" %WorkbenchArgs%

pause
