Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# NOTE (hub33k): copy of from C:\Program Files (x86)\Steam\steamapps\common\DayZ\dayz.gproj
#  fixed indentation
$GprojTemplate = "$PSScriptRoot/files/dayz-template.gproj"

$ModPrefix = "$($MODS_TO_BUILD[0].Prefix)"
$ModName = "$($MODS_TO_BUILD[0].ModName)".Replace("@", "")
$ModPrefixLinkRoot = "$($MODS_TO_BUILD[0].PrefixLinkRoot)"
$CurrentModPath = "$ModRootPath\$($MODS_TO_BUILD[0].PrefixLinkRoot)"
$GrojOutputFile = "$CurrentModPath\Workbench\dayz.gproj"

# NOTE (hub33k): for now using first element of array - $MODS_TO_BUILD[0]
# TODO (hub33k): handle multiple mods
# foreach ($mod in $MODS_TO_BUILD) {
#   $CurrentModPath = "$ModRootPath\$($mod.PrefixLinkRoot)"
#   $GrojOutputFile = "$ModRootPath\$($mod.PrefixLinkRoot)\Workbench\dayz.gproj"
# }

$foldersToAdd = @(
  "1_Core"
  "2_GameLib"
  "3_Game"
  "4_World"
  "5_Mission"
)

$variablesToReplace = @(
  "@GAME_DIR"
  "@IMAGE_SET"
  "@WIDGET_STYLE"
  "@SCRIPTS_1_CORE"
  "@SCRIPTS_2_GAMELIB"
  "@SCRIPTS_3_GAME"
  "@SCRIPTS_4_WORLD"
  "@SCRIPTS_5_MISSION"
  "@SCRIPTS_WORKBENCH"
)

# Object of arrays of strings
[pscustomobject] $scriptsPaths = @{}
$scriptsPaths["GAME_DIR"] = [System.Collections.Arraylist] @()
$scriptsPaths["IMAGE_SET"] = [System.Collections.Arraylist] @()
$scriptsPaths["WIDGET_STYLE"] = [System.Collections.Arraylist] @()
$scriptsPaths["SCRIPTS_1_CORE"] = [System.Collections.Arraylist] @()
$scriptsPaths["SCRIPTS_2_GAMELIB"] = [System.Collections.Arraylist] @()
$scriptsPaths["SCRIPTS_3_GAME"] = [System.Collections.Arraylist] @()
$scriptsPaths["SCRIPTS_4_WORLD"] = [System.Collections.Arraylist] @()
$scriptsPaths["SCRIPTS_5_MISSION"] = [System.Collections.Arraylist] @()
$scriptsPaths["SCRIPTS_WORKBENCH"] = [System.Collections.Arraylist] @()


# ================================================================
# Handle paths

Get-ChildItem -Path "$CurrentModPath\*" -Recurse -Depth 1 | ForEach-Object {
  # Handle 1_Core, etc. folders
  foreach ($folder in $foldersToAdd) {
    if ($_.Name -eq $folder) {
      $test = "$ModPrefixLinkRoot\" + $_.FullName.Replace("$CurrentModPath\", "")
      $test = $test.Replace("\", "/")
      $scriptsPaths[$("SCRIPTS_$($_.Name)")].Add("`"$test`"") | Out-Null
    }
  }
}

# Handle workbench plugins folder
if (Test-Path -Path "$CurrentModPath\Scripts\Editor\Plugins\$ModName") {
  $scriptsPaths["SCRIPTS_WORKBENCH"].Add("`"$ModPrefixLinkRoot\Scripts\Editor\Plugins`"".Replace("\", "/")) | Out-Null
}

# ================================================================
# Add entries to gproj file

$GprojTemplateFile = Get-Content -Path $GprojTemplate

"Generating dayz.gproj file: $GrojOutputFile"

$GprojTemplateFile | ForEach-Object {
  if ($variablesToReplace.Contains($_)) {
    $array = $scriptsPaths[$($_.Replace("@", ""))]
    if ($array) {
      # indent first element
      $array[0] = "`n`t`t`t`t`t`t$($array[0])`n"
      $array -join  "`n`t`t`t`t`t`t"
    }
  }
  else {
    "$_`n"
  }
} | Set-Content -Path "$GrojOutputFile" -NoNewline

# pause
