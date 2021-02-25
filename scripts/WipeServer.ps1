. ./Config

$pathToRemove = "$PathMPMission\storage_1"

if (Test-Path -Path $pathToRemove -PathType Container) {
  Write-Host Wiping server: $pathToRemove
  Remove-Item $pathToRemove -Recurse -Force -Confirm:$false
}

# pause
