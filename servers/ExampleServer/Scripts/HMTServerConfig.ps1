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

$PathModsExternalRoot = "$PathWorkDrive\Mods"
$PathModsDevRoot = "$PathWorkDrive\ModsDev"

$MODS_EXTERNAL = [System.Collections.ArrayList]@(
  # Mod utils
  # "$PathModsExternalRoot\@CF"
  # "$PathModsExternalRoot\@Dabs Framework"

  # Admin Tools
  # "$PathModsExternalRoot\@VPPAdminTools"
  # "$PathModsExternalRoot\@ZomBerry Admin Tools"

  # Complex mods

  # Quality of life
  # "$PathModsExternalRoot\@SimpleAutorun"
  # "$PathModsExternalRoot\@Ear-Plugs"

  # Mechanics
  # "$PathModsExternalRoot\@GoreZ"

  # Base building
  # "$PathModsExternalRoot\@Code Lock"
  # "$PathModsExternalRoot\@BaseBuildingPlus"
  # "$PathModsExternalRoot\@BuildEverywhere"
  # "$PathModsExternalRoot\@BuilderItems"

  # Items
  # "$PathModsExternalRoot\@Notes"

  # "$PathModsExternalRoot\@MuchStuffPack"
  # "$PathModsExternalRoot\@Mass'sManyItemOverhaul"
  # "$PathModsExternalRoot\@MunghardsItempack"

  # "$PathModsExternalRoot\@SQUAD MSF-C"
  # "$PathModsExternalRoot\@MoreGuns"

  # Cars
  # "$PathModsExternalRoot\@IRP-Land-Rover-Defender-110"
)

$MODS_DEV = [System.Collections.ArrayList]@(
  "$ModBuildDirectory\@ExampleMod"
  # "$ModBuildDirectory\@OtherMod"
)
# $MODS_DEV.Add("$ModBuildDirectory\@OtherMod") | Out-Null

if ($ServerType -eq [ServerTypes]::Production) {
  # Production mods
} elseif ($ServerType -eq [ServerTypes]::Testing) {
  # Testing mods
} elseif ($ServerType -eq [ServerTypes]::Local) {
  # $MODS_EXTERNAL.Add("$PathModsExternalRoot\@Dabs Framework") | Out-Null
}

$MODS_EXTERNAL = $MODS_EXTERNAL -join ";"
$MODS_DEV = $MODS_DEV -join ";"

$MODS = ""

if ($MODS_EXTERNAL.Length) {
  $MODS = "$MODS_EXTERNAL"
}
if ($MODS_EXTERNAL.Length -and $MODS_DEV.Length) {
  $MODS = "$MODS;$MODS_DEV"
} elseif ($MODS_DEV.Length) {
  $MODS = "$MODS_DEV"
}


# ================================================================
# Args
# ================================================================

$ServerArgs = "-server -filePatching `"-config=$ServerConfigFile`" `"-port=$ServerPort`" `"-profiles=$ServerProfileDir`" -dologs -adminlog -freezecheck `"-scriptDebug=true`" -cpuCount=4 `"-mission=$PathMPMission`" `"-mod=$MODS`""

$ClientArgs = "-connect=127.0.0.1:$ServerPort `"-password=$ServerPassword`" `"-profiles=$ClientProfileDir`" -filePatching `"-mod=$MODS`" `"-name=$PlayerName`" -dologs -adminlog -freezecheck -nopause `"-scriptDebug=true`""
