Set-StrictMode -Version Latest

# If custom script exists, run it
if (Test-Path -Path "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1") {
  "[$((Get-Item $PSCommandPath ).BaseName)] Running custom $((Get-Item $PSCommandPath ).BaseName)"
  . "$PSScriptRoot\$((Get-Item $PSCommandPath ).BaseName)Custom.ps1"
  exit 0
}

. $PSScriptRoot/Config

# Delete Server logs
"[ClearLogs] Removing client/server logs *.log, *.rpt, *.mdmp, *.ADM"

Remove-Item -Path $ServerProfileDir\* -include *.log, *.rpt, *.mdmp, *.ADM -Verbose -Recurse
Remove-Item -Path $ClientProfileDir\* -include *.log, *.rpt, *.mdmp, *.ADM -Verbose -Recurse

# pause
