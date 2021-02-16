@REM ================================================================

@REM Mods for development

set "ModPrefix=HM\ExampleOne"
set "ModName=@Example-Two"

set "PathModsDevRoot=%PathWorkDrive%\HM\"

set "MODS_DEV=%PathWorkDrive%\%ModPrefix%"
@REM set "MODS_DEV=%PathWorkDrive%\Mods\%ModName%"
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
