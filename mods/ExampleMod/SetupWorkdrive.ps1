$prefix = "HM"
$prefixPath = "P:\$prefix"
$modName = ""

if (Test-Path -Path "$prefixPath\$modName" -PathType Container) {
  "Removing $prefixPath\$modName"
  Remove-Item "$prefixPath\$modName" -Recurse -Force -Confirm:$false
}

"Creating link $prefixPath\$modName"
New-Item -Path "$prefixPath\$modName" -ItemType Junction -Value "$pwd\HM"

# ================================================================

$srcPath = "$PSScriptRoot\Scripts\HMTModConfig.ps1"
$destPath = "P:\HubModdingTools\HMTModConfig.ps1"

# if path `P:\HubModdingTools` does not exist
if (!(Test-Path -Path "P:\HubModdingTools" -PathType Container)) {
  New-Item -Path "P:\HubModdingTools" -Type directory
}

if (Test-Path -Path "$destPath" -PathType leaf) {
  "Removing $destPath"
  Remove-Item "$destPath"
}

"Creating link $destPath <-> $srcPath"
New-Item -Path "$destPath" -ItemType SymbolicLink -Value "$srcPath"

pause
