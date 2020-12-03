@echo off

cd /d "%~dp0"

@REM ================================================================
@REM Load User Settings configuration
@REM ================================================================

call Config.bat

@REM ================================================================

set "ServerProfileDir=%PathServer%\%ServerProfileFolder%"
set "ClientProfileDir=%PathClient%\%ClientProfileFolder%"

del /s /q /f %ServerProfileDir%\*.rpt 2>nul
del /s /q /f %ServerProfileDir%\*.log 2>nul
del /s /q /f %ServerProfileDir%\*.mdmp 2>nul
del /s /q /f %ServerProfileDir%\*.ADM 2>nul

del /s /q /f %ClientProfileDir%\*.rpt 2>nul
del /s /q /f %ClientProfileDir%\*.log 2>nul
del /s /q /f %ClientProfileDir%\*.mdmp 2>nul
del /s /q /f %ClientProfileDir%\*.ADM 2>nul

@REM del /s /q /f "%localappdata%\DayZ Exp\*.rpt"
@REM del /s /q /f "%localappdata%\DayZ Exp\*.log"
@REM del /s /q /f "%localappdata%\DayZ Exp\*.mdmp"
@REM del /s /q /f "%localappdata%\DayZ Exp\*.ADM"

pause
