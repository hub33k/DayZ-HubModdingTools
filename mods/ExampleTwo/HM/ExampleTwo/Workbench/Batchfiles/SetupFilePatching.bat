@echo off

@REM Copied from https://github.com/InclementDab/DayZ-Utilities

call Config.bat

setlocal enableextensions enabledelayedexpansion

cd /d "%~dp0"

set /a failed=0

REM Add more additional prefixes here!
set ModPrefixDirectories[0]=HM
@REM set ModPrefixDirectories[1]=JM
@REM set ModPrefixDirectories[2]=DayZExpansion

REM Set the root of your workdrive here!
set WorkDriveRoot=P:\

REM Don't touch the file after here unless you know what you are doing!

set ServerDirectory=%PathServer%
set ClientDirectory=%PathClient%
set WorkbenchDirectory=%PathDayZWorkbench%

set /a Length=0
set /a InclusiveLength=0

echo.[101;93m The following variables being used are [0m
echo.[31m WorkDriveRoot:[0m %WorkDriveRoot%
echo.[31m ServerDirectory:[0m %ServerDirectory%
echo.[31m ClientDirectory:[0m %ClientDirectory%
echo.[31m WorkbenchDirectory:[0m %WorkbenchDirectory%

:EchoLoopPrefixes
if defined ModPrefixDirectories[%Length%] (
  REM call echo 	%%ModPrefixDirectories[%Length%]%%
  set /a Length+=1
  GOTO :EchoLoopPrefixes
)
set /a InclusiveLength=%Length%-1

echo.[31m Mod Prefix Directories (total %Length%): [0m

for /l %%n in (0,1,%InclusiveLength%-1) do (
  echo.	!ModPrefixDirectories[%%n]!
)

:PROMPT
@REM SET /P AREYOUSURE=[101;93m Are you sure you want to continue? (Y/[N]) [0m
@REM IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo.[101;93m Setting up the symbollic links for the server [0m

for /l %%n in (0,1,%InclusiveLength%-1) do (
  echo.[33mCreating \!ModPrefixDirectories[%%n]!\ link[0m
  rmdir "%ServerDirectory%\!ModPrefixDirectories[%%n]!\"
  mklink /J "%ServerDirectory%\!ModPrefixDirectories[%%n]!\" "%WorkDriveRoot%!ModPrefixDirectories[%%n]!\"\
)

echo.[101;93m Setting up the symbollic links for the client [0m

for /l %%n in (0,1,%InclusiveLength%-1) do (
  echo.[33mCreating \!ModPrefixDirectories[%%n]!\ link[0m
  rmdir "%ClientDirectory%\!ModPrefixDirectories[%%n]!\"
  mklink /J "%ClientDirectory%\!ModPrefixDirectories[%%n]!\" "%WorkDriveRoot%!ModPrefixDirectories[%%n]!\"\
)

:END
endlocal

pause
