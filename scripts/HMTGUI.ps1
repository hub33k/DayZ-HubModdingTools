Set-StrictMode -Version Latest

. $PSScriptRoot/Config

# TODO (hub33k): add buttons to scripts
#  https://lazyadmin.nl/powershell/powershell-gui-howto-get-started/

# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms

# Create a new form
$LocalPrinterForm = New-Object system.Windows.Forms.Form

# Define the size, title and background color
$LocalPrinterForm.ClientSize = '500,300'
$LocalPrinterForm.text = "HubModdingTools - GUI"
$LocalPrinterForm.BackColor = "#ffffff"

# Display the form
[void]$LocalPrinterForm.ShowDialog()
