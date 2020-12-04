@echo off

cd /d "%~dp0"

set "workDrive=P:"
set "prefix=HM"
set "modName=ExampleOne"

set "clientDir=%workDrive%\Client"
set "serverDir=%workDrive%\Server"

if not exist "%workDrive%\%prefix%\" (
  echo Creating folder %workDrive%\%prefix%\
  mkdir "%workDrive%\%prefix%"
)

if exist "%workDrive%\%prefix%\%modName%\" (
  echo Removing existing link %workDrive%\%prefix%\%modName%
  rmdir "%workDrive%\%prefix%\%modName%\"
)

echo Creating link %workDrive%\%prefix%\%modName%
mklink /J "%workDrive%\%prefix%\%modName%\" "%cd%\%prefix%\%modName%\"

@REM Setup filepatching folders (Client and Server)

if exist "%clientDir%\%prefix%" (
  echo Removing existing link "%clientDir%\%prefix%"
  rmdir "%clientDir%\%prefix%"
)
mklink /J "%clientDir%\%prefix%\" "%workDrive%\%prefix%\"

if exist "%serverDir%\%prefix%" (
  echo Removing existing link "%serverDir%\%prefix%"
  rmdir "%serverDir%\%prefix%"
)
mklink /J "%serverDir%\%prefix%\" "%workDrive%\%prefix%\"

echo Done

pause
