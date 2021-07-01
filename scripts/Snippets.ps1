
# Check if folder exists
# ================================================================

if (Test-Path -Path 'C:\Windows' -PathType Container) {}
if (Test-Path -Path $PathHMTRoot -PathType Container) {}

# Enum and if conditions
# ================================================================

enum ServerTypes {
  Production = 0
  Testing
}
[ServerTypes] $ServerType = [ServerTypes]::Testing

if ($ServerType -eq [ServerTypes]::Testing) {}
switch ($ServerType) {
  Production {"It is p."}
  Testing {"It is t."}
}
