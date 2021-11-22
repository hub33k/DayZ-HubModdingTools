Set-StrictMode -Version Latest

. $PSScriptRoot/Config

. $PSScriptRoot/StopClient

"Starting DayZ CLIENT: $ExecutableDayZClient"
"Args:"
"$ClientArgs"

Start-Process $PathClient\$ExecutableDayZClient $ClientArgs

pause
