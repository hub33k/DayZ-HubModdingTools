@echo off

@REM TODO (hub33k): test this

@REM TODO (hub33k): add to HubMods and symlink
@REM TODO (hub33k): add mod parameter to workbench?
@REM TODO (hub33k): move dayz.gproj to mod folder

@REM ================================================================

set "PathSPMission=%PathClient%\mpmissions\dayzOffline.chernarusplus"
set "PathMPMission=%PathServer%\mpmissions\dayzOffline.chernarusplus"

set "PlayerName=hub33k"

set "ServerProfileFolder=!Server_Profile"
set "ClientProfileFolder=!Client_Profile"

set "ServerProfileDir=%PathServer%\%ServerProfileFolder%"
set "ClientProfileDir=%PathClient%\%ClientProfileFolder%"

set "ServerPort=2302"

set ServerArgs=-server -filePatching "-config=serverDZ.cfg" "-port=%ServerPort%" "-profiles=%ServerProfileFolder%" -dologs -adminlog -freezecheck "-scriptDebug=true" "-cpuCount=4" "-mission=%PathMPMission%" "-mod=%MODS%"

set ClientArgs=-connect=127.0.0.1:%ServerPort% "-password=ok" -profiles=%ClientProfileFolder% -filePatching "-mod=%MODS%" "-name=%PlayerName%" -dologs -adminlog -freezecheck -nopause "-scriptDebug=true"

@REM set "WorkbenchArgs=-gproj=%GprojToLoad% -dologs "-mod=%MODS_WORKBENCH%" -adminlog -freezecheck -scriptDebug=true"
set "WorkbenchArgs=-gproj=%GprojToLoad% -dologs -adminlog -freezecheck -scriptDebug=true"

@REM ================================================================

set "GprojToLoad=C:\dev\gamedev\dayz-modding\tools\HubModdingTools\mods\HubMods\Workbench\dayz.gproj"

@REM ================================================================

@REM Mods for development

set "ModPrefix=HM"
set "ModName=HubBase"

set "PathModsDevRoot=%PathWorkDrive%\%ModPrefix%"

@REM order matters
set "MODS_DEV=%PathModsDevRoot%\HubBase"
@REM set "MODS_DEV=%MODS_DEV%;%PathModsDevRoot%\HubAdminTools"
set "MODS_DEV=%MODS_DEV%;%PathModsDevRoot%\HubTest"

@REM ================================================================

@REM External mods (like @CF, @VPPAdminTools)

set "PathModsExternalRoot=%PathWorkDrive%\Mods\"

set "MODS_EXTERNAL=%PathModsExternalRoot%@CF"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@VPPAdminTools"

@REM ================================================================

@REM Mods for Client and Server

set "MODS=%MODS_EXTERNAL%;%MODS_DEV%"

@REM ================================================================
