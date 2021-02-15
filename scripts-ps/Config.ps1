. ./Helpers

# Some global variables
# ================================================================

# https://stackoverflow.com/questions/9725521/how-to-get-the-parents-parent-directory-in-powershell
$PathHMTRoot = Split-Path $PSScriptRoot -Parent

# Load ConfigUser
. ./ConfigUser

# ================================================================

$PathSteamAppsCommon = "$PathSteamApps\common"

$PathDayZClient    = "$PathSteamAppsCommon\DayZ"
$PathDayZServer    = "$PathSteamAppsCommon\DayZServer"
$PathDayZTools     = "$PathSteamAppsCommon\DayZ Tools"
$PathDayZWorkbench = "$PathDayZTools\Bin\Workbench"

# ================================================================

$ExecutableWorkbench = "workbenchApp.exe"
$ExecutableDayZServer = "DayZDiag_x64-Server.exe"
$ExecutableDayZClient = "DayZDiag_x64-Client.exe"
