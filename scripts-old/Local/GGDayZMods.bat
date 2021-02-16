@echo off

set "GprojToLoad=C:\dev\gamedev\dayz-modding\tools\HubModdingTools\mods\HubMods\Workbench\dayz.gproj"

@REM ================================================================

@REM Mods for development

set "ModPrefix=HM"
set "ModName=HubBase"

set "PathModsDevRoot=%PathWorkDrive%\%ModPrefix%"

set "MODS_DEV=%PathModsDevRoot%\HubBase"
set "MODS_DEV=%MODS_DEV%;%PathModsDevRoot%\HubTest"


@REM ================================================================

@REM External mods (like @CF, @VPPAdminTools)

set "PathModsExternalRoot=%PathWorkDrive%\Mods\"

set "MODS_EXTERNAL=%PathModsExternalRoot%@CF"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@VPPAdminTools"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@SimpleAutorun"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Ear-Plugs"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@CheckIdentity"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Better Inspect"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@BuildAnywhere_v3"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@BaseBuildingPlus"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Base Fortifications"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Code Lock"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Breachingcharge"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@RaidSchedule"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@AdvancedWorkbench"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@FarmingPlus+"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@ExtraFarmingItems"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Airdrop-Upgraded"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@ToxicZone"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MedicalAttentionUpdated"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@GoreZ"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@CannabisPlus"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@DrugsPLUS"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Notes"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Treasure"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@GarbageSearch"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@VendingSearch"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@ShakeForFruit"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Zeroy-FishingZ"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MuchStuffPack"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@SQUAD MSF-C"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Mass'sManyItemOverhaul"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MunghardsItempack"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@SkinInfected"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@WindstridesClothingPack"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MoreGuns"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@HellRetex Mod"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@HellRetex Additions - Weapons"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@HellRetex Additions - Survival"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@AwesomeArmbands"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@IRP-Land-Rover-Defender-110"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@[CrSk] BMW 525i E34"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Gerphelius Zil-130"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@VeeDub Lt"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@CarHorn"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MuchCarKey"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@DropItemsBeforeDying"

@REM ================================================================

@REM Mods for Client and Server

set "MODS=%MODS_EXTERNAL%;%MODS_DEV%"

@REM ================================================================
