function StopProcess {
  param (
    $path
  )

  $processName = [io.path]::GetFileNameWithoutExtension("$path")
  $processToStop = Get-Process $processName -ErrorAction SilentlyContinue

  if ($processToStop) {
    if (!$processToStop.HasExited) {
      Write-Host "Stopping process: $path"
      $processToStop | Stop-Process -Force
    }
  }

  Remove-Variable processName
  Remove-Variable processToStop
}

# ================================================================
# General utils
# ================================================================

function pause {
  param (
    $message = "Press any key (Escape or Enter) to continue...`n"
  )

  Write-Host -NoNewLine $message

  # https://adamtheautomator.com/powershell-pause/
  Do {
    $Key = [Console]::ReadKey($True)
    # Write-Host $Key.Key
  } While ( ($Key.Key -ne [ConsoleKey]::Escape) -and ($Key.Key -ne [ConsoleKey]::Enter) )

  # https://stackoverflow.com/questions/20886243/press-any-key-to-continue
  # $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
}
