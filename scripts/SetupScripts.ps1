Set-StrictMode -Version Latest

. $PSScriptRoot/Config

if (Test-Path -Path "$PathWorkDrive\HubModdingTools\scripts") {
  Remove-Item -Path "$PathWorkDrive\HubModdingTools\scripts" -Recurse -Force
}

New-Item -Path "$PathWorkDrive\HubModdingTools\scripts" -Value "$PSScriptRoot" -ItemType Junction

pause
