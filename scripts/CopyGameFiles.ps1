Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# xcopy options - https://www.petefreitag.com/item/99.cfm

"----------------------------------------------------------------"
"BEGIN copying Client and Server Game Directories to:"
"$PathClient and $PathServer"
"----------------------------------------------------------------"

# ================================================================
# Copy From DayZ Client
# Addons, dta, executables, dlls
# ================================================================

"Copy From DayZ Client"
"----------------------------------------------------------------"

xcopy "$PathDayZClient\Addons"          "$PathClient\Addons" /D /Y /I /F
xcopy "$PathDayZClient\BattlEye"        "$PathClient\BattlEye" /D /Y /I /F /E
xcopy "$PathDayZClient\bliss"           "$PathClient\bliss" /D /Y /I /F /E
xcopy "$PathDayZClient\dta"             "$PathClient\dta" /D /Y /I /F

xcopy "$PathDayZClient\*.dll"           "$PathClient\" /D /Y /F
xcopy "$PathDayZClient\dayz.gproj"      "$PathClient\" /D /Y /F
xcopy "$PathDayZClient\steam_appid.txt" "$PathClient\" /D /Y /F

"`n"

# ================================================================
# Copy From DayZ Server
# Dlls, Server Config, MPMission, Keys
# ================================================================

"Copy From DayZ Server"
"----------------------------------------------------------------"

xcopy "$PathDayZServer\addons"             "$PathServer\addons" /D /Y /I /F /E
xcopy "$PathDayZServer\battleye"           "$PathServer\battleye" /D /Y /I /F /E
xcopy "$PathDayZServer\bliss"              "$PathServer\bliss" /D /Y /I /F /E
xcopy "$PathDayZServer\dta"                "$PathServer\dta" /D /Y /I /F /E
xcopy "$PathDayZServer\keys"               "$PathServer\keys" /D /Y /I /F

xcopy "$PathDayZServer\*.dll"              "$PathServer\" /D /Y /F

# ================================

# xcopy "$PathDayZServer\mpmissions"         "$PathServer\mpmissions" /D /Y /I /F /E
# xcopy "$PathDayZServer\ban.txt"            "$PathServer\" /D /Y /F
# xcopy "$PathDayZServer\whitelist.txt"      "$PathServer\" /D /Y /F
# xcopy "$PathDayZServer\dayzsetting.xml"    "$PathServer\" /D /Y /F
xcopy "$PathDayZServer\dayz.gproj"         "$PathServer\" /D /Y /F
# xcopy "$PathDayZServer\serverDZ.cfg"       "$PathServer\" /D /Y /F

"`n"

# ================================================================
# Copy From DayZDiag_x64.exe from DayZ Client
# 2 copies for Client and Server executables
# ================================================================

xcopy "$PathDayZClient\DayZDiag_x64.exe" "$PathClient\$ExecutableDayZClient*" /D /Y /F
xcopy "$PathDayZClient\DayZDiag_x64.exe" "$PathServer\$ExecutableDayZServer*" /D /Y /F

"----------------------------------------------------------------"
"FINISHED copying to:"
"$PathClient and $PathServer"
"----------------------------------------------------------------"

pause
