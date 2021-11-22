Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# TODO (hub33k): sometimes when client and server are working there is powershell error (console closes quickly)
# https://stackoverflow.com/questions/9948517/how-to-stop-a-powershell-script-on-the-first-error
# powershell stop on error, do not close cmd
# $ErrorActionPreference = "Stop"

. $PSScriptRoot/StopClient
. $PSScriptRoot/StopServer

pause
