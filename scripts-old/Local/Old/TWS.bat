@echo off

@REM ================================================================

@REM C:\dev\gamedev\dayz-tws\dayz-tws-server

set "TWSConfigDir=C:\dev\gamedev\dayz-tws\dayz-tws-server"

set "ServerConfigFile=C:\dev\gamedev\dayz-modding\tools\HubModdingTools\mods\TWSMods\serverDZ.cfg"

set "PathSPMission=%TWSConfigDir%\mpmissions\dayzOffline.chernarusplus"
set "PathMPMission=%TWSConfigDir%\mpmissions\dayzOffline.chernarusplus"

set "PlayerName=hub33k"

set "ServerProfileFolder=profiles"
set "ClientProfileFolder=!Client_Profile"

set "ServerProfileDir=%TWSConfigDir%\%ServerProfileFolder%"
set "ClientProfileDir=%TWSConfigDir%\%ClientProfileFolder%"

set "ServerPort=2302"

set ServerArgs=-server -filePatching "-config=%ServerConfigFile%" "-port=%ServerPort%" "-profiles=%ServerProfileDir%" -dologs -adminlog -freezecheck "-scriptDebug=true" "-cpuCount=4" "-mission=%PathMPMission%" "-mod=%MODS%"

set ClientArgs=-connect=127.0.0.1:%ServerPort% "-password=ok" -profiles=%ClientProfileDir% -filePatching "-mod=%MODS%" "-name=%PlayerName%" -dologs -adminlog -freezecheck -nopause "-scriptDebug=true"

set "WorkbenchArgs=-gproj=%GprojToLoad% -dologs -adminlog -freezecheck -scriptDebug=true"

@REM ================================================================

set "GprojToLoad=C:\dev\gamedev\dayz-modding\tools\HubModdingTools\mods\TWSMods\Workbench\dayz.gproj"

@REM ================================================================

@REM Mods for development

@REM Check TTS
set "ModPrefix=TWS"
set "ModName=TWS_Test"

set "PathModsDevRoot=%PathWorkDrive%\%ModPrefix%"

@REM order matters
@REM @The Walking Survivors Server Mod Pack
set "MODS_DEV=%PathModsDevRoot%\TWS_Test"
@REM set "MODS_DEV=%MODS_DEV%;%PathModsDevRoot%\TWSTest"

@REM ================================================================

@REM External mods (like @CF, @VPPAdminTools)

set "PathModsExternalRoot=%PathWorkDrive%\Mods\"

set "MODS_EXTERNAL=%PathModsExternalRoot%@CF"
@REM set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Community-Online-Tools"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@VPPAdminTools"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@ZomBerry Admin Tools"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@The Walking Survivors Server Mod Pack"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@SchanaModGlobalChat"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@CheckIdentity"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@SimpleAutorun"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Ear-Plugs"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MoreStamina"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MedicalAttentionUpdated-DepHelper-Vanilla"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MedicalAttentionUpdated-Core"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MedicalAttentionUpdated"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@BuildAnywhere_v3"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@BuilderItems"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Chernarus Battalion Headquarters Skalisty Island"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Code Lock"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@BaseBuildingPlus"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@RaidSchedule"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Breachingcharge"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@BreachingCharge RaidSchedule Compatibility"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MuchStuffPack"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Perishable Food (Fixed)"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@ToxicZone"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Airdrop-Upgraded"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@MosinScope"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Advanced Weapon Scopes"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@IRP-Land-Rover-Defender-110"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Mercedes_G65_AMG"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@HellRetex Mod"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@HellRetex Weapons"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@HellRetex Additions - Survival"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@ClothingInventoryFix"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@Winter Chernarus"
set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%@DisableGardenPlots"
@REM set "MODS_EXTERNAL=%MODS_EXTERNAL%;%PathModsExternalRoot%"

@REM @CF
@REM @VPPAdminTools
@REM @ZomBerry Admin Tools
@REM @The Walking Survivors Server Mod Pack
@REM @SchanaModGlobalChat
@REM @CheckIdentity
@REM @SimpleAutorun
@REM @Ear-Plugs
@REM @MoreStamina
@REM @MedicalAttentionUpdated-DepHelper-Vanilla
@REM @MedicalAttentionUpdated-Core
@REM @MedicalAttentionUpdated
@REM @BuildAnywhere_v3
@REM @BuilderItems
@REM @Chernarus Battalion Headquarters Skalisty Island
@REM @Code Lock
@REM @BaseBuildingPlus
@REM @RaidSchedule
@REM @Breachingcharge
@REM @BreachingCharge RaidSchedule Compatibility
@REM @MuchStuffPack
@REM @Perishable Food
@REM @ToxicZone
@REM @Airdrop-Upgraded
@REM @MosinScope
@REM @Advanced Weapon Scopes
@REM @IRP-Land-Rover-Defender-110
@REM @Mercedes_G65_AMG
@REM @HellRetex Mod
@REM @HellRetex Weapons
@REM @HellRetex Additions Survival
@REM @ClothingInventoryFix
@REM @Winter Chernarus
@REM @DisableGardenPlots

@REM ================================================================

@REM Mods for Client and Server

@REM %MODS_DEV%
set "MODS=%MODS_EXTERNAL%;%MODS_DEV%"

@REM ================================================================

@REM Starting DayZ SERVER: DayZDiag_x64-Server.exe
@REM Args:
@REM -server -filePatching "-config=C:\dev\gamedev\dayz-modding\tools\HubModdingTools\mods\TWS\serverDZ.cfg" "-port=2302" "-profiles=C:\dev\gamedev\dayz-tws\dayz-tws-server\profiles" -dologs -adminlog -freezecheck "-scriptDebug=true" "-cpuCount=4" "-mission=C:\dev\gamedev\dayz-tws\dayz-tws-server\mpmissions\dayzOffline.chernarusplus" "-mod=P:\Mods\@CF;P:\Mods\@VPPAdminTools;P:\Mods\@ZomBerry Admin Tools;P:\Mods\@The Walking Survivors Server Mod Pack;P:\Mods\@SchanaModGlobalChat;P:\Mods\@CheckIdentity;P:\Mods\@SimpleAutorun;P:\Mods\@Ear-Plugs;P:\Mods\@MoreStamina;P:\Mods\@MedicalAttentionUpdated-DepHelper-Vanilla;P:\Mods\@MedicalAttentionUpdated-Core;P:\Mods\@MedicalAttentionUpdated;P:\Mods\@BuildAnywhere_v3;P:\Mods\@BuilderItems;P:\Mods\@Chernarus Battalion Headquarters Skalisty Island;P:\Mods\@Code Lock;P:\Mods\@BaseBuildingPlus;P:\Mods\@RaidSchedule;P:\Mods\@Breachingcharge;P:\Mods\@BreachingCharge RaidSchedule Compatibility;P:\Mods\@MuchStuffPack;P:\Mods\@Perishable Food (Fixed);P:\Mods\@ToxicZone;P:\Mods\@Airdrop-Upgraded;P:\Mods\@MosinScope;P:\Mods\@Advanced Weapon Scopes;P:\Mods\@IRP-Land-Rover-Defender-110;P:\Mods\@Mercedes_G65_AMG;P:\Mods\@HellRetex Mod;P:\Mods\@HellRetex Weapons;P:\Mods\@HellRetex Additions - Survival;P:\Mods\@ClothingInventoryFix;P:\Mods\@Winter Chernarus;P:\Mods\@DisableGardenPlots"
@REM Press any key to continue . . .


@REM Starting DayZ CLIENT: DayZDiag_x64-Client.exe
@REM Args:
@REM -connect=127.0.0.1:2302 "-password=ok" -profiles=C:\dev\gamedev\dayz-tws\dayz-tws-server\!Client_Profile -filePatching "-mod=P:\Mods\@CF;P:\Mods\@VPPAdminTools;P:\Mods\@ZomBerry Admin Tools;P:\Mods\@The Walking Survivors Server Mod Pack;P:\Mods\@SchanaModGlobalChat;P:\Mods\@CheckIdentity;P:\Mods\@SimpleAutorun;P:\Mods\@Ear-Plugs;P:\Mods\@MoreStamina;P:\Mods\@MedicalAttentionUpdated-DepHelper-Vanilla;P:\Mods\@MedicalAttentionUpdated-Core;P:\Mods\@MedicalAttentionUpdated;P:\Mods\@BuildAnywhere_v3;P:\Mods\@BuilderItems;P:\Mods\@Chernarus Battalion Headquarters Skalisty Island;P:\Mods\@Code Lock;P:\Mods\@BaseBuildingPlus;P:\Mods\@RaidSchedule;P:\Mods\@Breachingcharge;P:\Mods\@BreachingCharge RaidSchedule Compatibility;P:\Mods\@MuchStuffPack;P:\Mods\@Perishable Food (Fixed);P:\Mods\@ToxicZone;P:\Mods\@Airdrop-Upgraded;P:\Mods\@MosinScope;P:\Mods\@Advanced Weapon Scopes;P:\Mods\@IRP-Land-Rover-Defender-110;P:\Mods\@Mercedes_G65_AMG;P:\Mods\@HellRetex Mod;P:\Mods\@HellRetex Weapons;P:\Mods\@HellRetex Additions - Survival;P:\Mods\@ClothingInventoryFix;P:\Mods\@Winter Chernarus;P:\Mods\@DisableGardenPlots" "-name=hub33k" -dologs -adminlog -freezecheck -nopause "-scriptDebug=true"
@REM Press any key to continue . . .

