. ./Config

. ./StopClient

Write-Host Starting DayZ CLIENT: $ExecutableDayZClient
Write-Host Args:
Write-Host $ClientArgs

start $PathClient\$ExecutableDayZClient $ClientArgs

pause
