@echo off

@rem to turn on wipe every restart set wipe to 1
set wipe=0

set server-path=C:\DayZ\ServerOne
set git-exec=C:\Program Files\Git\cmd\git.exe
set mission=dayzOffline.chernarusplus

@rem ================================================================

start "" /B /D "%server-path%" "%git-exec%" fetch origin main
timeout /t 10

start "" /B /D "%server-path%" "%git-exec%" pull
timeout /t 15

start "" /B /D "%server-path%" "%git-exec%" add .
timeout /T 1

start "" /B /D "%server-path%" "%git-exec%" commit -m "Server Autoupdate!"
timeout /T 1

start "" /B /D "%server-path%" "%git-exec%" push
timeout /t 15

@rem ================================================================

if %wipe%==1 (
  rmdir /q/s "%server-path%\mpmissions\%mission%\storage_1"
  timeout /T 5
)
