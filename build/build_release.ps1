param(
    [string]$OutDir = "release"
)

$ErrorActionPreference = "Stop"

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

Write-Host "Packaging portable AVS+ mpv build"
Write-Host "Expected contents:"
Write-Host "  mpv.exe"
Write-Host "  FFmpeg DLLs with AVS+ support"
Write-Host "  portable_config"
