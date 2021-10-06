$srcPath = "$PSScriptRoot\Scripts\HMTServerConfig.ps1"
$destPath = "P:\HubModdingTools\HMTServerConfig.ps1"

# if path `P:\HubModdingTools` does not exist
if (!(Test-Path -Path "P:\HubModdingTools" -PathType Container)) {
  New-Item -Path "P:\HubModdingTools" -Type directory
}

# Remove previous file
if (Test-Path -Path "$destPath" -PathType leaf) {
  "Removing $destPath"
  Remove-Item "$destPath"
}

"Creating link $destPath <-> $srcPath"
New-Item -Path "$destPath" -ItemType SymbolicLink -Value "$srcPath"
