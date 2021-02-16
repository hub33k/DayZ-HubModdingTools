@echo off

cd /d "%~dp0"

@REM ================================================================
@REM Load User Settings configuration
@REM ================================================================

call Config.bat


@REM ================================================================
@REM Prints all mods that in Dayz !Workshop folder
@REM ================================================================

set "modsPath=%PathDayZClient%\!Workshop"

for /f "usebackq delims=|" %%f in (`dir /b "%modsPath%"`) do (echo %%f)

pause
