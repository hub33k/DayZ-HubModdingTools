. $PSScriptRoot/../Config

. $PathScriptsRoot/Modding/Modding

 $ModPrefixDirectories = [System.Collections.ArrayList]@("ExampleMod")
#  $ModPrefixDirectories.Add("DayZEditor") > $null
#  $ModPrefixDirectories.Add("JM") > $null
#  $ModPrefixDirectories.Add("DayZExpansion") > $null

$ModPrefixDirectoriesSize = $ModPrefixDirectories.Count

foreach ($prefix in $ModPrefixDirectories) {
  # "$prefix"
}

# rmdir "$PathDayZWorkbench\Addons\"
cmd /c mklink /J "$PathDayZWorkbench\Addons\" "$PathClient\Addons\"

foreach ($prefix in $ModPrefixDirectories) {
  # Server
  cmd /c rmdir "$PathServer\$prefix\"
  cmd /c mklink /J "$PathServer\$prefix\" "$PathWorkDrive\$prefix\"

  # cmd /c rmdir "$PathDayZServer\$prefix\"
  # cmd /c mklink /J "$PathDayZServer\$prefix\" "$PathWorkDrive\$prefix\"

  # Client
  # cmd /c mklink /J "%ClientDirectory%\!ModPrefixDirectories[%%n]!\" "%WorkDriveRoot%!ModPrefixDirectories[%%n]!\"\
  cmd /c rmdir "$PathClient\$prefix\"
  cmd /c mklink /J "$PathClient\$prefix\" "$PathWorkDrive\$prefix\"

  # cmd /c rmdir "$PathDayZClient\$prefix\"
  # cmd /c mklink /J "$PathDayZClient\$prefix\" "$PathWorkDrive\$prefix\"
}

pause