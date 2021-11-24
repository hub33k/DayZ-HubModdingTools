Set-StrictMode -Version Latest

# If custom script exists, run it
if (Test-Path -Path "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1") {
  "[$((Get-Item $PSCommandPath ).BaseName)] Running custom $((Get-Item $PSCommandPath ).BaseName)"
  . "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1"
  exit 0
}

. $PSScriptRoot/Config

. $PSScriptRoot/StopWorkbench

$currentLocation = Get-Location
$ModWorkbenchPath = "$ModRootPath\$($MODS_TO_BUILD[0].PrefixLinkRoot)\Workbench"

if (Test-Path -Path "$ModWorkbenchPath\dayz.gproj") {
  Set-Location -Path "$ModWorkbenchPath"
  .\dayz.gproj
} else {
  Write-Host "Cannot find dayz.gproj in $ModWorkbenchPath\dayz.gproj"
  pause
  exit 1
}

Set-Location -Path $currentLocation

# pause
