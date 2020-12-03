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

@REM Mods for development

set "ModPrefix=HM\ExampleOne"

set "PathModsDevRoot=%PathWorkDrive%\HM\"

set "MODS_DEV=%PathWorkDrive%\%ModPrefix%"
@REM set "MODS_DEV=%MODS_DEV%;%PathModsDevRoot%HubAdminTools"

@REM ================================

@REM External mods (like @CF, @VPPAdminTools)

set "PathModsExternalRoot=%PathWorkDrive%\Mods\"

set "MODS_EXTERNAL=%PathModsExternalRoot%@CF"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@VPPAdminTools"

@REM ================================

@REM Mods for Workbench

set "GprojToLoad=%PathWorkDrive%\%ModPrefix%\Workbench\dayz.gproj"

set "PathModsWorkbenchRoot=%PathWorkDrive%\HM\"

set "MODS_WORKBENCH=%PathWorkDrive%\%ModPrefix%"

@REM ================================

set "MODS=%MODS_EXTERNAL%;%MODS_DEV%"

@REM ================================================================

set "PathSPMission=%PathClient%\mpmissions\dayzOffline.chernarusplus"
set "PathMPMission=%PathServer%\mpmissions\dayzOffline.chernarusplus"

set "PlayerName=hub33k"
set "ServerProfileFolder=!Server_Profile"
set "ClientProfileFolder=!Client_Profile"
set "ServerPort=2302"

@REM ================================================================

set ServerArgs=-server -filePatching "-config=serverDZ.cfg" "-port=%ServerPort%" "-profiles=%ServerProfileFolder%" -dologs -adminlog -freezecheck "-scriptDebug=true" "-cpuCount=4" "-mission=%PathMPMission%" "-mod=%MODS%"

set ClientArgs=-connect=127.0.0.1:%ServerPort% "-password=ok" -profiles=%ClientProfileFolder% -filePatching "-mod=%MODS%" "-name=%PlayerName%" -dologs -adminlog -freezecheck "-scriptDebug=true"

@REM set "WorkbenchArgs=-gproj=%GprojToLoad% -dologs "-mod=%MODS_WORKBENCH%" -adminlog -freezecheck -scriptDebug=true"
set "WorkbenchArgs=-gproj=%GprojToLoad% -dologs -adminlog -freezecheck -scriptDebug=true"

endlocal
