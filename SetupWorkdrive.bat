@echo off

cd /d "%~dp0"

set "workDrive=P:"
set "modName=HubModdingTools"

if exist "%workDrive%\%modName%\" (
  echo Removing existing link %workDrive%\%modName%
  rmdir "%workDrive%\%modName%\"
)

echo Creating link %workDrive%\%modName%
mklink /J "%workDrive%\%modName%\" "%cd%"

echo Done

pause
