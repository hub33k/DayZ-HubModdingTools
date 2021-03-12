# TODO (hub33k): This file will ignored by git

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

# NOTE (hub33k): load only one mod!
# Load mod config
# . $PathScriptsRoot/Local/Mods/ExampleMod
# . $PathScriptsRoot/Local/Mods/HubBase
. $PathScriptsRoot/Local/Mods/TheWalkingSurvivorsMod

# Load server config
. $PathScriptsRoot/Local/Server/hubdayz-chernarus-1
# . $PathScriptsRoot/Local/Server/TWS
# . $PathScriptsRoot/Local/Server/ExampleServer
