# ExampleServer

# ================================================================
# General
# ================================================================

enum ServerTypes {
  Production = 0
  Testing
  Local
}
[ServerTypes] $ServerType = [ServerTypes]::Local

# Get real server path
$ProjectRootPath = Split-Path -Path (Split-Path -Path (Get-Item $MyInvocation.MyCommand.Path).Target -Parent) -Parent

$BaseDir = "$ProjectRootPath\Server"

$ServerPort = 2302
$ServerPassword = "HMT_OK!"
$ServerConfigFile = "$BaseDir\serverDZ.local.cfg"

$ServerProfileFolder = "!Server_Profile"
$ClientProfileFolder = "!Client_Profile"

$ServerProfileDir = "$BaseDir\$ServerProfileFolder"
$ClientProfileDir = "$BaseDir\$ClientProfileFolder"

$PathSPMission = "$BaseDir\mpmissions\dayzOffline.chernarusplus"
$PathMPMission = "$BaseDir\mpmissions\dayzOffline.chernarusplus"

$PlayerName = "hub33k"


# ================================================================
# Mods to load
# ================================================================

$PathModsExternalRoot = "$PathWorkDrive\Mods\"
$PathModsDevRoot = "$PathWorkDrive"

$MODS_EXTERNAL = [System.Collections.ArrayList]@("$PathModsExternalRoot@CF")

if ($ServerType -eq [ServerTypes]::Production) {
  # Production mods
} elseif ($ServerType -eq [ServerTypes]::Testing) {
  # Testing mods
} elseif ($ServerType -eq [ServerTypes]::Local) {

  # Mod utils
  $MODS_EXTERNAL.Add("@Dabs Framework") > $null

  # Admin Tools
  # $MODS_EXTERNAL.Add("@VPPAdminTools") > $null
  # $MODS_EXTERNAL.Add("@ZomBerry Admin Tools") > $null

  # Complex mods

  # Quality of life
  $MODS_EXTERNAL.Add("@SimpleAutorun") > $null
  $MODS_EXTERNAL.Add("@Ear-Plugs") > $null

  # Mechanics
  # $MODS_EXTERNAL.Add("@GoreZ") > $null

  # Base building
  # $MODS_EXTERNAL.Add("@Code Lock") > $null
  # $MODS_EXTERNAL.Add("@BaseBuildingPlus") > $null
  # $MODS_EXTERNAL.Add("@BuildEverywhere") > $null
  # $MODS_EXTERNAL.Add("@BuilderItems") > $null

  # Items
  # $MODS_EXTERNAL.Add("@Notes") > $null

  # $MODS_EXTERNAL.Add("@MuchStuffPack") > $null
  # $MODS_EXTERNAL.Add("@Mass'sManyItemOverhaul") > $null
  # $MODS_EXTERNAL.Add("@MunghardsItempack") > $null

  # $MODS_EXTERNAL.Add("@SQUAD MSF-C") > $null
  # $MODS_EXTERNAL.Add("@MoreGuns") > $null

  # Cars
  # $MODS_EXTERNAL.Add("@IRP-Land-Rover-Defender-110") > $null

  # ================================

  $MODS_DEV = [System.Collections.ArrayList]@("$ModBuildDirectory\@ExampleMod")
  # $MODS_DEV.Add("$ModBuildDirectory\@OtherMod") > $null
}

$MODS_EXTERNAL = $MODS_EXTERNAL -join ";$PathModsExternalRoot"
$MODS_DEV = $MODS_DEV -join ";"
# $MODS_DEV = $MODS_DEV -join ";$PathModsDevRoot\" # add prefix to MODS_DEV

$MODS = "$MODS_EXTERNAL;$MODS_DEV"


# ================================================================
# Args
# ================================================================

$ServerArgs = "-server -filePatching `"-config=$ServerConfigFile`" `"-port=$ServerPort`" `"-profiles=$ServerProfileDir`" -dologs -adminlog -freezecheck `"-scriptDebug=true`" -cpuCount=4 `"-mission=$PathMPMission`" `"-mod=$MODS`""

$ClientArgs = "-connect=127.0.0.1:$ServerPort `"-password=$ServerPassword`" `"-profiles=$ClientProfileDir`" -filePatching `"-mod=$MODS`" `"-name=$PlayerName`" -dologs -adminlog -freezecheck -nopause `"-scriptDebug=true`""
