Set-StrictMode -Version Latest

. $PSScriptRoot/Config

. $PSScriptRoot/StopServer

"Starting DayZ SERVER: $ExecutableDayZServer"
"Args:"
"$ServerArgs"

Start-Process $PathServer\$ExecutableDayZServer $ServerArgs

pause
