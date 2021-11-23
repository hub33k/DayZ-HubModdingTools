- [Requirements](#requirements)
  - [Optional tools](#optional-tools)
- [Configuration](#configuration)
  - [Pre setup](#pre-setup)
  - [Setup P drive](#setup-p-drive)
  - [Extract DayZ code](#extract-dayz-code)
  - [Setup local server](#setup-local-server)
  - [Setup local mod](#setup-local-mod)
  - [Setup workbench](#setup-workbench)

# Requirements

- `DayZ`, `DayZ Server` and `DayZ Tools` (installed on Steam).
- PowerShell - https://docs.microsoft.com/en-us/powershell/
  - for running scripts
- Mikero Tools - run `scripts/DownloadMikeroTools.ps1`
  - it will download all Mikero Tools you will need to install
  - if you have problems downloading files go to `https://mikero.bytex.digital/Downloads` and download file manually
  - `cupCore2p`
  - `dayz2p`
  - `DePbo`
  - `DeOgg`
  - `DeRap`
  - `Eliteness`
  - `ExtractPbo`
  - `MakePbo`
  - `Mikero AIO Install.exe` - for upgrading Mikero Tools
  - `pboProject`
  - `Rapify`

## Optional tools

- [PBO Manager](https://pbo-manager-v-1-4.software.informer.com/1.4b/)

# Configuration

## Pre setup

1. Create root folder for all DayZ related stuff (eg. `C:\DayZ`).
1. Clone `DayZ-HubModdingTools` repository to `C:\DayZ`.

   - `git clone https://github.com/hub33k/DayZ-HubModdingTools`
   - Path should looks like `C:\DayZ\DayZ-HubModdingTools`.

1. Copy `scripts/ConfigUserSample.ps1` to `scripts/ConfigUser.ps1` and adjust values (for more info check [ConfigUser.md](ConfigUser.md)).
1. Run `Setup.ps1`.

## Setup P drive

1. Run `DayZ Tools` (from steam).
1. Navigate to Settings.
1. Set a `Drive Letter` and your `Path to the Project Drive`.
   1. Recommended `Drive Letter` - `P:\`
   1. Recommended `Path to the Project Drive` - `C:\DayZ\pdrive`
1. Select `Automatic mount of the Project Drive` to `Startup of the Tools`.
1. Click apply.

## Extract DayZ code

1. Extract DayZ code via Mikero Tools - run `C:\Program Files (x86)\Mikero\DePboTools\bin\dayz2p.cmd`.

   - For workdrive choose `P`.

1. Run `scripts/Vendor/DayZ-Utilities/FixScripts.bat`.

## Setup local server

TODO (hub33k):

## Setup local mod

TODO (hub33k):

## Setup workbench

- https://community.bistudio.com/wiki/DayZ:Workbench_Script_Debugging -> Workbench Setup
