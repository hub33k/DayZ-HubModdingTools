@echo off

call Config.bat

cd /d "%~dp0"

set batchDirectory=%cd%

set /a failed=0

set compression=

if "%3" == "" (
	set /p enableCompression=Enable Compression?[Y/N]?

	if /I "%enableCompression%" == "Y" (
		set compression=+Z
	) else (
		set compression=-Z
	)
)

if "%3" == "1" (
	set compression=+Z
) else (
	set compression=-Z
)

setlocal enableextensions enabledelayedexpansion

echo KeyDirectory is: "%keyDirectory%"
if "%keyDirectory%"=="" (
	set /a failed=1
	echo KeyDirectory parameter was not set in the project.cfg
)

echo KeyName is: "%keyName%"
if "%keyName%"=="" (
	set /a failed=1
	echo KeyName parameter was not set in the project.cfg
)

echo ModName is: "%modName%"
if "%modName%"=="" (
	set /a failed=1
	echo ModName parameter was not set in the project.cfg
)

echo WorkDrive is: "%workDrive%"
if "%workDrive%"=="" (
	set /a failed=1
	echo WorkDrive parameter was not set in the project.cfg
)

echo ModBuildDirectory is: "%modBuildDirectory%"
if "%modBuildDirectory%"=="" (
	set /a failed=1
	echo ModBuildDirectory parameter was not set in the project.cfg
)

echo PrefixLinkRoot is: "%prefixLinkRoot%"
if "%prefixLinkRoot%"=="" (
	set /a failed=1
	echo PrefixLinkRoot parameter was not set in the project.cfg
)

set _DAYZTOOLSPATH=%_DAYZTOOLSPATH:"=%
set _MIKEDLL=%_MIKEDLL:"=%

if %failed%==1 (
	endlocal

	echo Failed to package the mod.
	goto:eof
)

set pboProject="%_MIKEDLL%\bin\pboProject.exe"
set signFile="%_DAYZTOOLSPATH%\Bin\DsUtils\DSSignFile.exe"

IF NOT exist "%modBuildDirectory%%modName%\Addons\" (
  echo %modBuildDirectory%%modName%\Addons\ does not exist
  pause
)

set "folderToBuild=%~p1"
set fuckThurston=

echo Copying over "%keyDirectory%%keyName%.bikey" to "%modBuildDirectory%%modName%\Keys\"
copy "%keyDirectory%%keyName%.bikey" "%modBuildDirectory%%modName%\Keys\" > nul

echo Packaging %modName% PBO's

@REM ================================================================

@echo off

cd /D "%workDrive%%prefixLinkRoot%\"

set pboName=%folderToBuild%
IF !pboName:~-1!==\ SET pboName=!pboName:~0,-1!
set pboName=!pboName:\%prefixLinkRoot%\=!
set pboName=!pboName:\=_!

set prefixName=%folderToBuild%
IF !prefixName:~-1!==\ SET prefixName=!prefixName:~0,-1!
set prefixName=!prefixName:\%prefixLinkRoot%\=!
set prefixName=%prefixLinkRoot%\!prefixName!

set sourcePath=%workDrive%!prefixName!

del %modBuildDirectory%%modName%\Addons\!pboName!.pbo
del %modBuildDirectory%%modName%\Addons\!pboName!.pbo.%keyName%.bisign

echo Building PBO: !pboName!.pbo
rem echo START /w %pboProject% %pboProject% +W -F +Stop -P -O -E=dayz "%workDrive%!prefixName!" "+Mod=%modBuildDirectory%%modName%" "-Key"
rem START /w %pboProject% %pboProject% +W -F +Stop -P -O -E=dayz "%workDrive%!prefixName!" "+Mod=%modBuildDirectory%%modName%" "-Key"
echo START /w %pboProject% %pboProject% +W -F +Stop -P %compression% -O -E=dayz +R "%workDrive%!prefixName!" "+Mod=%modBuildDirectory%%modName%" "-Key"
START /w %pboProject% %pboProject% +W -F +Stop -P %compression% -O -E=dayz +R "%workDrive%!prefixName!" "+Mod=%modBuildDirectory%%modName%" "-Key"

if not errorlevel 1 (
	set currentFolder=
	for %%I in ( %folderToBuild%\config.cpp\.. ) do (
		set "currentFolder=%%~nxI"
	)

	cd /D "%modBuildDirectory%%modName%\Addons\"

	echo Renaming PBO to %modBuildDirectory%%modName%\Addons\!pboName!.pbo
	rename "%modBuildDirectory%%modName%\Addons\!currentFolder!.pbo" "!pboName!.pbo"

	%signFile% "%keyDirectory%%keyName%.biprivatekey" "%modBuildDirectory%%modName%\Addons\!pboName!.pbo"
	goto end
) else (
	echo /////////////////////////////////////////////////////////////
	echo Something went wrong with %%D for !pboName!.pbo - this tool will not work until you fix it. Please check %workDrive%Temp\ for the issue should be the most recent packing/bin log
	echo /////////////////////////////////////////////////////////////
	pause
	goto end
)

:end
endlocal

echo "ENDED"
if EXIST %~p2 (
	exit
)

pause
