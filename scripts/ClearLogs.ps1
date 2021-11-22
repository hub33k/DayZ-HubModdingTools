Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# Delete Server logs
"[ClearLogs] Removing client/server logs *.log, *.rpt, *.mdmp, *.ADM"

""

Remove-Item -Path $ServerProfileDir\* -include *.log, *.rpt, *.mdmp, *.ADM -Verbose -Recurse
Remove-Item -Path $ClientProfileDir\* -include *.log, *.rpt, *.mdmp, *.ADM -Verbose -Recurse

pause
