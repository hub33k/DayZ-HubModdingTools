- [Requirements](#requirements)
- [Structure](#structure)
  - [P Drive](#p-drive)
- [Configuration](#configuration)
- [Server](#server)
- [Mods](#mods)

# Requirements

- `DayZ`, `DayZ Server` and `DayZ Tools` (installed on Steam).
- PowerShell - https://docs.microsoft.com/en-us/powershell/
  - for running scripts
- Mikero Tools - https://mikero.bytex.digital/Downloads
  - cupCore2p
  - dayz2p
  - DeRap
  - Eliteness
  - ExtractPbo
  - MakePbo
  - pboProject
  - Rapify

# Structure

- `C:\dev\gamedev\dayz\`
  - `Client`
  - `DayZ-HubModdingTools`
  - `dayz-src`
  - `modding`
    - `keys`
  - `pdrive`
  - `Server`

## P Drive

- `P:\` - (DayZ extracted assets and source code)
  - `bin`
  - `Core`
  - `dta`
  - `DZ`
  - `ExampleMod -> C:\dev\ExampleMod` - mod that we're working on (source code)
  - `graphics`
  - `gui`
  - `HubModdingTools` - files for HubModdingTools
  - `languagecore`
  - `Logs` - my logs
  - `Mods` - mods from steam workshop (symlinked)
  - `ModsDev` - our mods that are production ready (packed to pbo's)
  - `scripts` - actual DayZ source code
  - `system`
  - `temp`
  - `vendor` - assets from workshop mods we want to edit
  - `MapLegend.png`

# Configuration

1. Setup Work Drive in `DayZ Tools` (`P:`).
1. Run `dayz2p.bat` (from Mikero Tools; by default located in: `C:\Program Files (x86)\Mikero\DePboTools\bin\`).
1. Copy `scripts/ConfigUserSample.bat` to `scripts/ConfigUser.bat`.
1. Adjust values in `scripts/ConfigUser.bat`.
1. Run `scripts/FixScripts.bat`.
1. Run `SetupWorkdrive.bat`.
1. Run `scripts/CopyGameFiles.bat`.

---

- configs
  - `scripts/Config.ps1`
  - `scripts/ConfigUser.ps1`
  - `P:\HubModdingTools\HMTServerConfig.ps1`
  - `P:\HubModdingTools\HMTModConfig.ps1`

# Server

- run `SetupWorkdrive.ps1` from server folder

# Mods

- run `SetupWorkdrive.ps1` from server folder
- before working on your mod, first you need to build your mod at least once
