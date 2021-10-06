$PathRealWorkDrive = "C:\DayZ"
$PathHMT = "$PathRealWorkDrive\DayZ-HubModdingTools"
$PathRealServer = "$PathRealWorkDrive\Server"
$PathRealClient = "$PathRealWorkDrive\Client"

$PathServer = "$PathRealServer"
$PathClient = "$PathRealClient"

$PathWorkDrive = "P:"

$PathSteamApps     = "C:\Programs\Steam\steamapps"
$PathMikeroTools   = "C:\Program Files (x86)\Mikero\DePboTools\bin"

$ModBuildDirectory = "$PathWorkDrive\ModsDev"
$KeyDirectory = "$PathRealWorkDrive\modding\keys"

# Load server config
if (Test-Path -Path "P:\HubModdingTools\HMTServerConfig.ps1" -PathType leaf) {
  . P:\HubModdingTools\HMTServerConfig
}

# Load mod config
if (Test-Path -Path "P:\HubModdingTools\HMTModConfig.ps1" -PathType leaf) {
  . P:\HubModdingTools\HMTModConfig
}
