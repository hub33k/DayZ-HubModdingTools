. ./Config

# Downloading from https://mikero.bytex.digital/Downloads

$PathUserDownloads = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
$PathDownloads = "$PathUserDownloads\MikeroTools"

# Create folder MikeroTools in users Downloads folder
if (!(Test-Path -Path "$PathDownloads" -PathType Container)) {
  CreateFolder("$PathDownloads")
}

$DownloadURL = "https://mikero.bytex.digital/api/download?filename="

# TODO (hub33k): scrap links from website - https://www.pipehow.tech/invoke-webscrape/

# https://mcpmag.com/articles/2019/04/10/managing-arrays-in-powershell.aspx
$FILES_TO_DOWNLOAD = [System.Collections.ArrayList]@(
  "aaaReadMeGeneral.htm"

  "cupCore2p.1.04.7.32.Installer.exe"
  "dayz2p.1.19.8.07.Installer.exe"
  "DeRap.1.82.7.71.Installer.exe"
  "Eliteness.4.00.8.11.Installer.exe"
  "ExtractPbo.2.26.7.79.Installer.exe"
  "MakePbo.2.12.7.73.Installer.exe"
  "Mikero_AiO_Installer_Beta_v1.1.1.10.exe"
  "pboProject.3.16.8.22.Installer.exe"
  "Rapify.1.85.7.71.Installer.exe"
)

# Hide download progress
# https://stackoverflow.com/questions/18770723/hide-progress-of-invoke-webrequest
$ProgressPreference = 'SilentlyContinue'

foreach ($fileToDownload in $FILES_TO_DOWNLOAD ) {
  "Downloading $fileToDownload"
  # TODO (hub33k): check if file was successfully downloaded
  # https://adamtheautomator.com/powershell-download-file/
  Invoke-WebRequest -Uri "$DownloadURL$fileToDownload" -OutFile "$PathDownloads\$fileToDownload"
}

""
"Done"

pause
