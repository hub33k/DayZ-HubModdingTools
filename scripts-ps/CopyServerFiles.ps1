. ./Config

# if some of this files does not exist, get them from original dayz server folder

# ================================================================
# handle files in root server dir
# ================================================================

$files = @(
  'ban.txt'
  'dayzsetting.xml'
  'serverDZ.cfg'
  'serverDZ.local.cfg'
  'whitelist.txt'
)

foreach ($file in $files) {
  # remove from server dir
  if (Test-Path -Path "$PathServer\$file" -PathType leaf) {
    Write-Host Removing "$PathServer\$file"
    Remove-Item "$PathServer\$file"
  }

  # create symlinks
  # https://stackoverflow.com/questions/894430/creating-hard-and-soft-links-using-powershell
  if (Test-Path -Path "$BaseDir\$file" -PathType leaf) {
    New-Item -Path "$PathServer\$file" -ItemType SymbolicLink -Value "$BaseDir\$file"
  }
}

"`n----------------------------------------------------------------`n"

# ================================================================
# handle mpmissions
# ================================================================

if (Test-Path -Path "$PathServerMission" -PathType Container) {
  Write-Host Removing $PathServerMission
  Remove-Item $PathServerMission -Recurse -Force -Confirm:$false
}

New-Item -Path "$PathServerMission" -ItemType SymbolicLink -Value "$PathMPMission"

pause
