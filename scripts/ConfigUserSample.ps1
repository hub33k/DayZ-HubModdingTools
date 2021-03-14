$PathWorkDrive = "P:"
$PathServer = "$PathWorkDrive\Server"
$PathClient = "$PathWorkDrive\Client"

$PathRealWorkDrive = "C:\dayz"
$PathRealServer = "$PathRealWorkDrive\Server"
$PathRealClient = "$PathRealWorkDrive\Client"

$PathSteamApps     = "C:\Programs\Steam\steamapps"
$PathMikeroTools   = "C:\Program Files (x86)\Mikero\DePboTools\bin\"

$PathServerMission = "$PathServer\mpmissions\dayzOffline.chernarusplus"

# Load custom config
. ./Local/Server/Server1

# Example config for mods
$MODS_TO_BUILD = @(
  [pscustomobject]@{
    ModName = "@ModOne"
    Prefix = "HM"
    PrefixLinkRoot = "HM\ModOne"
    KeyName = "hub33k"
  }

  [pscustomobject]@{
    ModName = "@ModTwo"
    Prefix = "HM"
    PrefixLinkRoot = "HM\ModTwo"
    KeyName = "hub33k"
  }
)

# Stuff for filepatching
$ModPrefixDirectories = [System.Collections.ArrayList]@("ExampleMod")
$ModPrefixDirectories.Add("HM") > $null
# $ModPrefixDirectories.Add("JM") > $null
# $ModPrefixDirectories.Add("DayZExpansion") > $null
