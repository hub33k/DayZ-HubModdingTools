Set-StrictMode -Version Latest

. $PSScriptRoot/Config

"Your PowerShell version: $($PSVersionTable.PSVersion)"
""

$variablesToTest = @(
  # Config variables
  'PathHMTRoot',
  'PathScriptsRoot',
  'PathDayZClient',
  'PathDayZServer',
  'PathDayZTools',
  'PathDayZWorkbench',
  'PathSteamAppsCommon',

  # ConfigUser variables
  'PathRealWorkDrive',
  'PathHMT',
  'PathRealServer',
  'PathRealClient',
  'PathServer',
  'PathClient',
  'PathWorkDrive',
  'PathSteamApps',
  'PathMikeroTools',
  'ModBuildDirectory',
  'KeyDirectory'
)

foreach ($variableName in $variablesToTest) {
  $path = (Get-Variable -Name $variableName).Value
  if (-not (Test-Path -Path "$path")) {
    Write-Host -Object "$variableName is wrong - '$path'!" -ForegroundColor Red
  }
}

""

pause
