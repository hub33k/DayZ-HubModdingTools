@echo off

cd /d "%~dp0"

@REM ================================================================
@REM Load User Settings configuration
@REM ================================================================

call Config.bat

echo ----------------------------------------------------------------
echo BEGIN copying Client and Server Game Directories to:
echo %PathClient% and %PathServer%
echo ----------------------------------------------------------------


@REM ================================================================
@REM Copy From DayZ Client
@REM Addons, dta, executables, dlls
@REM ================================================================

echo Copy From DayZ Client
echo ----------------------------------------------------------------

xcopy "%PathDayZClient%\Addons"          "%PathClient%\Addons" /D /Y /I /F
xcopy "%PathDayZClient%\BattlEye"        "%PathClient%\BattlEye" /D /Y /I /F
xcopy "%PathDayZClient%\bliss"           "%PathClient%\bliss" /D /Y /I /F
xcopy "%PathDayZClient%\dta"             "%PathClient%\dta" /D /Y /I /F

xcopy "%PathDayZClient%\*.dll"           "%PathClient%\" /D /Y /F
xcopy "%PathDayZClient%\dayz.gproj"      "%PathClient%\" /D /Y /F
xcopy "%PathDayZClient%\steam_appid.txt" "%PathClient%\" /D /Y /F

echo.

@REM ================================================================
@REM Copy From DayZ Server
@REM Dlls, Server Config, MPMission, Keys
@REM ================================================================

echo Copy From DayZ Server
echo ----------------------------------------------------------------

xcopy "%PathDayZServer%\addons"             "%PathServer%\addons" /D /Y /I /F /E
xcopy "%PathDayZServer%\battleye"           "%PathServer%\battleye" /D /Y /I /F /E
xcopy "%PathDayZServer%\bliss"              "%PathServer%\bliss" /D /Y /I /F /E
xcopy "%PathDayZServer%\dta"                "%PathServer%\dta" /D /Y /I /F /E
xcopy "%PathDayZServer%\keys"               "%PathServer%\keys" /D /Y /I /F

@REM
xcopy "%PathDayZServer%\mpmissions"         "%PathServer%\mpmissions" /D /Y /I /F /E

xcopy "%PathDayZServer%\*.dll"              "%PathServer%\" /D /Y /F

@REM
xcopy "%PathDayZServer%\ban.txt"            "%PathServer%\" /D /Y /F
xcopy "%PathDayZServer%\whitelist.txt"      "%PathServer%\" /D /Y /F
xcopy "%PathDayZServer%\dayzsetting.xml"    "%PathServer%\" /D /Y /F

xcopy "%PathDayZServer%\dayz.gproj"         "%PathServer%\" /D /Y /F

@REM
rem xcopy "%PathHMTBase%\config\serverDZ.cfg"   "%PathServer%\" /D /Y /F
xcopy "%PathDayZServer%\serverDZ.cfg"   "%PathServer%\" /D /Y /F

echo.


@REM ================================================================
@REM Copy From DayZDiag_x64.exe from DayZ Client
@REM 2 copies for Client and Server executables
@REM ================================================================

xcopy "%PathDayZClient%\DayZDiag_x64.exe" "%PathClient%\%ExecutableDayZClient%*" /D /Y /F
xcopy "%PathDayZClient%\DayZDiag_x64.exe" "%PathServer%\%ExecutableDayZServer%*" /D /Y /F


echo ----------------------------------------------------------------
echo FINISHED copying to:
echo %PathClient% and %PathServer%
echo ----------------------------------------------------------------

pause
