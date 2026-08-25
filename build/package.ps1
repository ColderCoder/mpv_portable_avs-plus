$ErrorActionPreference = 'Stop'

$root = Split-Path $PSScriptRoot -Parent
$out = Join-Path $root 'dist'

New-Item -ItemType Directory -Force $out | Out-Null

# Package mpv.exe, patched FFmpeg DLLs and portable_config.
Write-Host 'TODO: collect runtime files'
Write-Host 'TODO: create portable zip'
