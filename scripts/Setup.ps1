Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# 1. Setup paths

"Setting up folders..."
CreateFolder("$PathRealServer")
CreateFolder("$PathRealClient")
CreateFolder("$PathRealWorkDrive\modding\keys")
CreateFolder("$PathRealWorkDrive\pdrive")
CreateFolder("$PathRealWorkDrive\pdrive\HubModdingTools")
CreateFolder("$PathRealWorkDrive\pdrive\Mods")
CreateFolder("$PathRealWorkDrive\pdrive\ModsDev")
CreateFolder("$ModBuildDirectory")
"Folders created..."

""

. $PSScriptRoot/CopyGameFiles
. $PSScriptRoot/SetupScripts

pause
