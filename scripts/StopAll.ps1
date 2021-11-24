Set-StrictMode -Version Latest

# If custom script exists, run it
if (Test-Path -Path "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1") {
  "[$((Get-Item $PSCommandPath ).BaseName)] Running custom $((Get-Item $PSCommandPath ).BaseName)"
  . "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1"
  exit 0
}

. $PSScriptRoot/Config

# TODO (hub33k): sometimes when client and server are working there is powershell error (console closes quickly)
# https://stackoverflow.com/questions/9948517/how-to-stop-a-powershell-script-on-the-first-error
# powershell stop on error, do not close cmd
# $ErrorActionPreference = "Stop"

. $PSScriptRoot/StopClient
""
. $PSScriptRoot/StopServer

pause
