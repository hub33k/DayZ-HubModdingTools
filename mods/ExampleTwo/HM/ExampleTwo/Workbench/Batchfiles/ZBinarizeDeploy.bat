@echo off

call Config.bat

cd /d "%~dp0"

set batchDirectory=%cd%

set /a failed=0

set /p enableCompression=Enable Compression?[Y/N]?

if /I "%enableCompression%" == "Y" (
  set /a compression=1
) else (
  set /a compression=0
)

@REM ================================================================

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

@REM ================================================================

if %failed%==1 (
  endlocal

  echo Failed to package the mod.
  goto:eof
)

set pboProject="%_MIKEDLL%\bin\pboProject.exe"
set signFile="%_DAYZTOOLSPATH%\Bin\DsUtils\DSSignFile.exe"

if exist "%modBuildDirectory%%modName%\" (
  echo Removing folder "%modBuildDirectory%%modName%\"
  rmdir /S /Q "%modBuildDirectory%%modName%\"
)

if not exist "%modBuildDirectory%%modName%\" (
  echo Creating folder "%modBuildDirectory%%modName%\"
  mkdir "%modBuildDirectory%%modName%\"
)

if not exist "%modBuildDirectory%%modName%\Addons\" (
  echo Creating folder "%modBuildDirectory%%modName%\Addons\"
  mkdir "%modBuildDirectory%%modName%\Addons\"
)

if not exist "%modBuildDirectory%%modName%\Keys\" (
  echo Creating folder "%modBuildDirectory%%modName%\Keys\"
  mkdir "%modBuildDirectory%%modName%\Keys\"
)

echo Copying over "%workDrive%%prefixLinkRoot%\mod.cpp" to "%modBuildDirectory%%modName%\"
copy "%workDrive%%prefixLinkRoot%\mod.cpp" "%modBuildDirectory%%modName%\" > nul

echo Copying over "%keyDirectory%\%keyName%.bikey" to "%modBuildDirectory%%modName%\Keys\"
echo Copying over "%keyDirectory%\%keyName%.biprivatekey" to "%modBuildDirectory%%modName%\Keys\"

echo Packaging %modName% PBO's

@echo off

cd /d "%workDrive%%prefixLinkRoot%\"

for /R %%D in ( config.cpp ) do (
  echo Checking directory %%~dD%%~pD, searching for config.cpp
  if exist "%%~dD%%~pDconfig.cpp" (
    echo config.cpp found!
    if not exist "%%~dD%%~pD..\config.cpp" (
      if not exist "%%~dD%%~pD..\..\config.cpp" (
        if not exist "%%~dD%%~pD..\..\..\config.cpp" (
          if not exist "%%~dD%%~pD..\..\..\..\config.cpp" (
            if not exist "%%~dD%%~pD..\..\..\..\..\config.cpp" (
              if not exist "%%~dD%%~pD..\..\..\..\..\..\config.cpp" (
                if not exist "%%~dD%%~pD..\..\..\..\..\..\..\config.cpp" (
                  if not exist "%%~dD%%~pD..\..\..\..\..\..\..\..\config.cpp" (
                    REM echo No parent config.cpp found, building pbo %%D
                    echo START /W "BinarizePBO" "%batchDirectory%\BinarizePBO.bat" %%D fuckThurston %compression%
                    start /W "BinarizePBO" "%batchDirectory%\BinarizePBO.bat" %%D fuckThurston %compression%
                  )
                )
              )
            )
          )
        )
      )
    )
  )
)

goto end

:end
endlocal

pause
