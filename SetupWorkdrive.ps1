$workDrive = "P:"
$modName = "HubModdingTools"

if (Test-Path -Path "$workDrive\$modName" -PathType Container) {
  "Removing existing link $workDrive\$modName"
  Remove-Item "$workDrive\$modName" -Recurse -Force -Confirm:$false
}

"Creating link $workDrive\$modName"

New-Item -Path "$workDrive\$modName" -ItemType Junction -Value $pwd

pause
