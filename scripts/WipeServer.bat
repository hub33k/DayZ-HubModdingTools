@echo off

cd /d "%~dp0"

@REM ================================================================
@REM Load User Settings configuration
@REM ================================================================

call Config.bat

@REM ================================================================

set "pathToRemove=%PathMPMission%\storage_1"

if exist %pathToRemove% (
  echo Removing "%pathToRemove%"
  rmdir /s /q "%pathToRemove%"
)

@REM pause
