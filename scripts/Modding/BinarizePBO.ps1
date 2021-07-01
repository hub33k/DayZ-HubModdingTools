. ../Config

. $PathScriptsRoot/Modding/Modding

$folderToBuild = $args[0]
$compression = $args[1]

$failed = 0

if (!$IsModding) {
  # TODO (hub33k): stop script here
}

# TODO (hub33k): check how it's made, check orginal src + P:\Mods
$pboName = "$folderToBuild".Replace("$PathWorkDrive\$prefixLinkRoot\", "")

"Copying over $KeyDirectory\$KeyName.bikey to $ModBuildDirectory\$modName\Keys"
Copy-Item "$KeyDirectory\$KeyName.bikey" -Destination "$ModBuildDirectory\$modName\Keys"

cmd /c start /w $pboProject $pboProject +W -F +Stop -P -Z -O -E=dayz +R "$folderToBuild" "+Mod=$ModBuildDirectory\$ModName" "-Key"

cmd /c $signFile "$KeyDirectory\$KeyName.biprivatekey" "$ModBuildDirectory\$modName\Addons\$pboName.pbo"

# pause
