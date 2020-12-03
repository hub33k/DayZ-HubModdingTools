@echo off

cd /d "%~dp0"

@REM ================================================================
@REM Load User Settings configuration
@REM ================================================================

call Config.bat


@REM ================================================================
@REM Symlink all mods installed on steam to my local server
@REM ================================================================

set "modsPath=%PathDayZClient%\!Workshop"

set "outputPath=P:\Mods"
set "clientPath=P:\Client"
set "serverPath=P:\Server"

for /f "usebackq delims=|" %%f in (`dir /b "%modsPath%"`) do (
  if exist "%outputPath%\%%f" (
    @REM echo "Removing existing link %outputPath%\%%f"
    rmdir "%outputPath%\%%f"
  )

  mklink /j "%outputPath%\%%f" "%modsPath%\%%f"
)

pause
