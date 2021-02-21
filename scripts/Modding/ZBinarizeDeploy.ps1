. $PSScriptRoot/../Config

. $PathScriptsRoot/Modding/Modding

# TODO (hub33k): is it needed?
$compression = 0 # promptYN "Compression" "Enable Compression?"

RemoveFolder "$modBuildDirectory\$modName"
CreateFolder "$modBuildDirectory\$modName"
CreateFolder "$modBuildDirectory\$modName\Addons"
CreateFolder "$modBuildDirectory\$modName\Keys"

"Copying over $PathWorkDrive\$prefixLinkRoot\mod.cpp to $modBuildDirectory\$modName\"
Copy-Item "$PathWorkDrive\$prefixLinkRoot\mod.cpp" -Destination "$modBuildDirectory\$modName\"

$configFiles = Get-ChildItem -Path "$PathWorkDrive\$prefixLinkRoot" -Filter config.cpp -Recurse -ErrorAction SilentlyContinue -Force
foreach ($file in $configFiles) {
  $rootPath = $file.FullName.Replace('\' + $file.Name, "")

  . $PathScriptsRoot/Modding/BinarizePBO "$rootPath" $compression
}

pause