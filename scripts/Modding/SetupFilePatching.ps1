Set-StrictMode -Version Latest

. $PSScriptRoot/../Config

. $PSScriptRoot/Modding

$ModPrefixDirectoriesSize = $ModPrefixDirectories.Count

foreach ($prefix in $ModPrefixDirectories) {
  # "$prefix"
}


if (Test-Path -Path "$PathDayZWorkbench\Addons\" -PathType Container) {
  cmd /c rmdir "$PathDayZWorkbench\Addons\"
}
cmd /c mklink /J "$PathDayZWorkbench\Addons\" "$PathClient\Addons\"

foreach ($prefix in $ModPrefixDirectories) {
  # Server
  if (Test-Path -Path "$PathServer\$prefix\" -PathType Container) {
    cmd /c rmdir "$PathServer\$prefix\"
  }
  cmd /c mklink /J "$PathServer\$prefix\" "$PathWorkDrive\$prefix\"

  # cmd /c rmdir "$PathDayZServer\$prefix\"
  # cmd /c mklink /J "$PathDayZServer\$prefix\" "$PathWorkDrive\$prefix\"

  # Client
  # cmd /c mklink /J "%ClientDirectory%\!ModPrefixDirectories[%%n]!\" "%WorkDriveRoot%!ModPrefixDirectories[%%n]!\"\
  if (Test-Path -Path "$PathClient\$prefix\" -PathType Container) {
    cmd /c rmdir "$PathClient\$prefix\"
  }
  cmd /c mklink /J "$PathClient\$prefix\" "$PathWorkDrive\$prefix\"
  # cmd /c rmdir "$PathDayZClient\$prefix\"
  # cmd /c mklink /J "$PathDayZClient\$prefix\" "$PathWorkDrive\$prefix\"
}

pause
