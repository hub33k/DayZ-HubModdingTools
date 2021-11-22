Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# ================================================================
# Symlink all mods installed on steam to my local server
# ================================================================

$modsPath = "$PathDayZClient\!Workshop"

$outputPath = "$PathWorkDrive\Mods"

Get-ChildItem –Path "$modsPath" |
Foreach-Object {
  $fullPath = $_.FullName
  $folderName = $_.Name
  $folderNameOrg = $_.Name

  # fix for square brackets in path
  # https://stackoverflow.com/questions/21008180/copy-file-with-square-brackets-in-the-filename-and-use-wildcard
  # https://stackoverflow.com/questions/55869623/how-to-escape-square-brackets-in-file-paths-with-invoke-webrequests-outfile-pa
  # $folderName = $folderName.Replace("[", "``[").Replace("]", "``]")
  $folderName = [WildcardPattern]::Escape($folderName)

  if (Test-Path -Path "$outputPath\$folderName" -PathType Container) {
    Remove-Item "$outputPath\$folderName" -Recurse -Force -Confirm:$false
  }

  # New-Item -Path "$outputPath\$folderNameOrg" -ItemType SymbolicLink -Value "$modsPath\$folderName"
  cmd /c mklink /j "$outputPath\$folderNameOrg" "$modsPath\$folderNameOrg"
}

pause
