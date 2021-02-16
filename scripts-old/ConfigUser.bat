@echo off

cd /d "%~dp0"

set "PathWorkDrive=P:"

set "PathGame=%PathWorkDrive%\MultiplayerGame"

set "PathServer=%PathWorkDrive%\Server"
set "PathClient=%PathWorkDrive%\Client"

set "PathRealWorkDrive=C:\dev\gamedev\dayz"
set "PathSteamApps=C:\Programs\Steam\steamapps"
set "PathMikeroTools=C:\Program Files (x86)\Mikero\DePboTools\bin\"

@REM TODO update examples of config

@REM Modding
@REM call Local/GGDayZMods.bat
@REM call Local/HubMods.bat

@REM Servers
call Local/Server/TWS.bat
rem call Local/Server/TWS-DM.bat
rem call Local/Server/hubdayz-chernarus-1.bat

@REM ================================================================

endlocal
