. ./Config

$modsPath = "$PathDayZClient\!Workshop"
$modsPath = "$PathDayZClient\!dzsal"
$modsPath = "$PathWorkDrive\Mods"

Get-ChildItem –Path "$modsPath" |
Foreach-Object {
  $folderName = $_.Name

  $folderName
}

pause
