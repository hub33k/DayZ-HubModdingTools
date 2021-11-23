Set-StrictMode -Version Latest

. $PSScriptRoot/Config

Clear-Host

# NOTE (hub33k): copy of from C:\Program Files (x86)\Steam\steamapps\common\DayZ\dayz.gproj
#  fixed indentation
$GprojTemplate = "$PSScriptRoot/files/dayz-template.gproj"

$CurrentModPath = "$ModRootPath\$($MODS_TO_BUILD[0].PrefixLinkRoot)"
$GrojOutputFile = "$CurrentModPath\Workbench\dayz.gproj"

# NOTE (hub33k): for now using first element of array - $MODS_TO_BUILD[0]
# TODO (hub33k): handle multiple mods
# foreach ($mod in $MODS_TO_BUILD) {
#   $CurrentModPath = "$ModRootPath\$($mod.PrefixLinkRoot)"
#   $GrojOutputFile = "$ModRootPath\$($mod.PrefixLinkRoot)\Workbench\dayz.gproj"
# }

$CurrentModPath
$GrojOutputFile
# Get-Content -Path $GprojTemplate

# pause
