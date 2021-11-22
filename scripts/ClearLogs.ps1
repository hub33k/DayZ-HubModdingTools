Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# TODO (hub33k): remove only from current dir not sub dirs

# TODO (hub33k): print deleted files
# https://stackoverflow.com/questions/43462123/how-do-i-print-a-files-name-path-before-deleting-it

# Delete Server logs
Remove-Item $ServerProfileDir\* -include *.log, *.rpt, *.mdmp, *.ADM

# Delete Client logs
Remove-Item $ClientProfileDir\* -include *.log, *.rpt, *.mdmp, *.ADM

pause
