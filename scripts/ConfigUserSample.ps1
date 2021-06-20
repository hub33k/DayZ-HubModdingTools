$PathHMT = "C:\dev\gamedev\dayz\DayZ-HubModdingTools"
$PathRealWorkDrive = "C:\dev\gamedev\dayz"
$PathRealServer = "$PathRealWorkDrive\Server"
$PathRealClient = "$PathRealWorkDrive\Client"

$PathServer = "$PathRealServer"
$PathClient = "$PathRealClient"

$PathWorkDrive = "P:"

$PathSteamApps     = "C:\Programs\Steam\steamapps"
$PathMikeroTools   = "C:\Program Files (x86)\Mikero\DePboTools\bin"

$PathServerMission = "$PathServer\mpmissions\dayzOffline.chernarusplus"

$ModBuildDirectory = "P:\ModsDev"
$KeyDirectory = "C:\dev\gamedev\dayz\modding\keys"


# Do not touch code below
# ================================================================

# Load server config
if (Test-Path -Path "P:\HubModdingTools\HMTServerConfig.ps1" -PathType leaf) {
  . P:\HubModdingTools\HMTServerConfig
}

# Load mod config
if (Test-Path -Path "P:\HubModdingTools\HMTModConfig.ps1" -PathType leaf) {
  . P:\HubModdingTools\HMTModConfig
}
