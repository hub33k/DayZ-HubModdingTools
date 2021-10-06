@echo off

@rem to turn on wipe every restart set wipe to 1
set wipe=0

set server-number=0
set server-path=C:\Users\Administrator\Desktop\OmegaManager\servers\%server-number%
set git-exec=C:\Program Files\Git\cmd\git.exe
set mission=dayzOffline.chernarusplus

@rem ================================================================

start "" /d "%server-path%" "%git-exec%" fetch origin master
timeout /t 10

start "" /d "%server-path%" "%git-exec%" pull
timeout /t 15

start "" /d "%server-path%" "%git-exec%" add .
start "" /d "%server-path%" "%git-exec%" commit -m "Server Autoupdate!"
start "" /d "%server-path%" "%git-exec%" push
timeout /t 15

@rem ================================================================

if %wipe%==1 (
  rmdir /q/s "%server-path%\mpmissions\%mission%\storage_1"
  timeout /T 5
)
