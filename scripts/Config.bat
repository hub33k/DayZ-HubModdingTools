@echo off

cd /d "%~dp0"

@REM Load user config
if exist ConfigUser.bat (
  call ConfigUser.bat
)

@REM ================================================================

set "PathSteamAppsCommon=%PathSteamApps%\common"
set "PathDayZClient=%PathSteamAppsCommon%\DayZ"
set "PathDayZServer=%PathSteamAppsCommon%\DayZServer"
set "PathDayZTools=%PathSteamAppsCommon%\DayZ Tools"
set "PathDayZWorkbench=%PathDayZTools%\Bin\Workbench"

@REM ================================

for %%d in (%~dp0..) do (
  set PathHMTBase=%%~fd
)

@REM ================================================================
@REM DayZ Executable files for development
@REM ================================================================

SET "ExecutableWorkbench=workbenchApp.exe"
SET "ExecutableDayZServer=DayZDiag_x64-Server.exe"
SET "ExecutableDayZClient=DayZDiag_x64-Client.exe"

endlocal
