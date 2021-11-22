Set-StrictMode -Version Latest


# ================================================================
#
# ================================================================

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

# prompt yes/no
# https://stackoverflow.com/questions/24649019/how-to-use-confirm-in-powershell/24649481
function promptYN {
  param (
    $title = 'something',
    $question = 'Are you sure you want to proceed?'
  )

  $choices = New-Object Collections.ObjectModel.Collection[Management.Automation.Host.ChoiceDescription]
  $choices.Add((New-Object Management.Automation.Host.ChoiceDescription -ArgumentList '&Yes'))
  $choices.Add((New-Object Management.Automation.Host.ChoiceDescription -ArgumentList '&No'))

  $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
  if ($decision -eq 0) {
    return 1
  } else {
    return 0
  }
}


# ================================================================
# Filetype utils
# ================================================================

function CreateFolder {
  param (
    $folderPath,
    $verbose = 1
  )

  if (-Not (Test-Path -Path "$folderPath" -PathType Container)) {
    if ($verbose) {
      "Creating folder $folderPath"
    }

    # NOTE (hub33k): if path between does not exist, PS will create missing path
    New-Item "$folderPath" -ItemType directory | Out-Null
  }
}

function RemoveFolder {
  param (
    $folderPath,
    $verbose = 1
  )

  if (Test-Path -Path "$folderPath" -PathType Container) {
    if ($verbose) {
      "Removing folder $folderPath"
    }

    Remove-Item $folderPath -Recurse -Force -Confirm:$false
  }
}
