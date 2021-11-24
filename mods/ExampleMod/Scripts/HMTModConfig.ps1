# Get real mod path
$ModRootPath = Split-Path -Path (Split-Path -Path (Get-Item $MyInvocation.MyCommand.Path).Target -Parent) -Parent

$prefix = "HM"
$keyName = "hub33k"

$MODS_TO_BUILD = @(
  # ExampleMod
  # ================================
  [pscustomobject]@{
    ModName = "@ExampleMod"
    Prefix = "$prefix"
    PrefixLinkRoot = "$prefix\ExampleMod"
    KeyName = "$keyName"
  }
)

# Stuff for filepatching
# ================================================================

$ModPrefixDirectories = [System.Collections.ArrayList]@("HM")
# $ModPrefixDirectories.Add("OtherExampleMod") > $null
