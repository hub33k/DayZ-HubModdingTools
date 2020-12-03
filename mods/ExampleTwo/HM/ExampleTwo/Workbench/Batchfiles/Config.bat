@echo off

call P:\HubModdingTools\scripts\Config.bat

cd /d "%~dp0"

set "workDrive=%PathWorkDrive%\"

set "modName=@Example-Two"
set "prefixLinkRoot=HM\ExampleTwo"
set "keyName=hub33k"

set "modBuildDirectory=%PathWorkDrive%\Mods\"
set "keyDirectory=%PathWorkDrive%\Keys\"

set "dayzToolsPath=%PathDayZTools%"

@REM ================================================================

@REM echo Searching for Mikero Tools...
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKCU\SOFTWARE\Mikero\depbo" /v "path" 2^>nul') do (set _MIKEDLL=%%B)
if not defined _MIKEDLL (
  for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Mikero\depbo" /v "path" 2^>nul') do (set _MIKEDLL=%%B)
  if not defined _MIKEDLL (
    echo Mikero Tools was not set in the registry path, trying default.
    set "_MIKEDLL=C:\Program Files (x86)\Mikero\DePboTools"
  ) else (
    @REM echo Found.
  )
) else (
  @REM echo Found.
)

@REM echo Searching for DayZ Tools...
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKCU\Software\bohemia interactive\Dayz Tools" /v "Path" 2^>nul') do (set _DAYZTOOLSPATH=%%B)
if not defined _DAYZTOOLSPATH (
  echo DayZ Tools was not set in the registry path, trying default.
  set "_DAYZTOOLSPATH=%PathDayZTools%"
) else (
  @REM echo Found.
)

@REM echo Searching for DayZ...
@REM for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\bohemia interactive\Dayz" /v "main" 2^>nul') do (
@REM 	set _DAYZPATH="%%B"
@REM 	set _DAYZPATH=!_DAYZPATH:"=!
@REM )

@REM echo Searching for DayZ Exp...
@REM for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\bohemia interactive\Dayz exp" /v "main" 2^>nul') do (
@REM 	set _DAYZEXPPATH="%%B"
@REM 	set _DAYZEXPPATH=!_DAYZEXPPATH:"=!
@REM )
@REM if not defined _DAYZEXPPATH (
@REM 	set /a failed=1
@REM 	echo.DayZ Exp was not set in the registry path.
@REM ) else (
@REM 	echo.Found DayZ Exp at %_DAYZEXPPATH%
@REM )
