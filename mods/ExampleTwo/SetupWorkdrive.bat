@echo off

cd /d "%~dp0"

set "workDrive=P:"
set "prefix=HM"
set "modName=ExampleTwo"

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

echo Done

pause
