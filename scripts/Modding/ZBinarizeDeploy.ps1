. $PSScriptRoot/../Config

. $PathScriptsRoot/Modding/Modding

$compression = 0 # promptYN "Compression" "Enable Compression?"

RemoveFolder "$modBuildDirectory\$modName"
CreateFolder "$modBuildDirectory\$modName"
CreateFolder "$modBuildDirectory\$modName\Addons"
CreateFolder "$modBuildDirectory\$modName\Keys"

"Copying over $PathWorkDrive\$prefixLinkRoot\mod.cpp to $modBuildDirectory\$modName\"

Copy-Item "$PathWorkDrive\$prefixLinkRoot\mod.cpp" -Destination "$modBuildDirectory\$modName\"

pause
