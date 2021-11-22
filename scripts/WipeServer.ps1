Set-StrictMode -Version Latest

. $PSScriptRoot/Config

$pathToRemove = "$PathMPMission\storage_1"

"[WipeServer] Removing server storage_1: $pathToRemove"

""

if (Test-Path -Path $pathToRemove -PathType Container) {
  Remove-Item $pathToRemove -Recurse -Force -Confirm:$false -Verbose
}

pause
