Set-StrictMode -Version Latest


# Some global variables
# ================================================================

# https://stackoverflow.com/questions/9725521/how-to-get-the-parents-parent-directory-in-powershell
$PathHMTRoot = Split-Path $PSScriptRoot -Parent
$PathScriptsRoot = "$PathHMTRoot\scripts"

# ================================================================

. $PSScriptRoot/Helpers
. $PSScriptRoot/ConfigUser

# ================================================================

$PathSteamAppsCommon = "$PathSteamApps\common"

$PathDayZClient    = "$PathSteamAppsCommon\DayZ"
$PathDayZServer    = "$PathSteamAppsCommon\DayZServer"
$PathDayZTools     = "$PathSteamAppsCommon\DayZ Tools\Bin"
$PathDayZWorkbench = "$PathDayZTools\Workbench"

# ================================================================

$ExecutableWorkbench = "workbenchApp.exe"
$ExecutableDayZServer = "DayZDiag_x64-Server.exe"
$ExecutableDayZClient = "DayZDiag_x64-Client.exe"
