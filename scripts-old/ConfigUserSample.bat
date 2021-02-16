@echo off

cd /d "%~dp0"

set "PathWorkDrive=P:"

set "PathGame=%PathWorkDrive%\MultiplayerGame"

set "PathServer=%PathWorkDrive%\Server"
set "PathClient=%PathWorkDrive%\Client"

set "PathRealWorkDrive=C:\dev\gamedev\dayz"
set "PathSteamApps=C:\Programs\Steam\steamapps"
set "PathMikeroTools=C:\Program Files (x86)\Mikero\DePboTools\bin\"

@REM ================================================================

set "PathSPMission=%PathClient%\mpmissions\dayzOffline.chernarusplus"
set "PathMPMission=%PathServer%\mpmissions\dayzOffline.chernarusplus"

set "PlayerName=hub33k"
set "ServerProfileFolder=!Server_Profile"
set "ClientProfileFolder=!Client_Profile"
set "ServerPort=2302"

@REM ================================================================

call Local/HubMods.bat

@REM ================================================================

set ServerArgs=-server -filePatching "-config=serverDZ.cfg" "-port=%ServerPort%" "-profiles=%ServerProfileFolder%" -dologs -adminlog -freezecheck "-scriptDebug=true" "-cpuCount=4" "-mission=%PathMPMission%" "-mod=%MODS%"

set ClientArgs=-connect=127.0.0.1:%ServerPort% "-password=ok" -profiles=%ClientProfileFolder% -filePatching "-mod=%MODS%" "-name=%PlayerName%" -dologs -adminlog -freezecheck "-scriptDebug=true"

@REM set "WorkbenchArgs=-gproj=%GprojToLoad% -dologs "-mod=%MODS_WORKBENCH%" -adminlog -freezecheck -scriptDebug=true"
set "WorkbenchArgs=-gproj=%GprojToLoad% -dologs -adminlog -freezecheck -scriptDebug=true"

endlocal
