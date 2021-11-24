Set-StrictMode -Version Latest

# If custom script exists, run it
if (Test-Path -Path "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1") {
  "[$((Get-Item $PSCommandPath ).BaseName)] Running custom $((Get-Item $PSCommandPath ).BaseName)"
  . "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1"
  exit 0
}

. $PSScriptRoot/Config

$pathToRemove = "$PathMPMission\storage_1"

"[WipeServer] Removing server storage_1: $pathToRemove"

if (Test-Path -Path $pathToRemove -PathType Container) {
  Remove-Item $pathToRemove -Recurse -Force -Confirm:$false -Verbose
}

# pause
