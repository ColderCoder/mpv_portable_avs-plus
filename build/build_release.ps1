param(
    [string]$OutDir = "release"
)

$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$MpvBin = Join-Path $Root "out/mpv/bin"
$FfmpegBin = Join-Path $Root "out/ffmpeg/bin"

Write-Host "Packaging portable AVS+ mpv build"

if (Test-Path $MpvBin) {
    Copy-Item "$MpvBin/*" $OutDir -Recurse -Force
}

if (Test-Path $FfmpegBin) {
    Copy-Item "$FfmpegBin/*.dll" $OutDir -Force -ErrorAction SilentlyContinue
}

$Config = Join-Path $Root "portable_config"
if (Test-Path $Config) {
    Copy-Item $Config $OutDir -Recurse -Force
}

@"
@echo off
mpv.exe %*
"@ | Out-File (Join-Path $OutDir "play_avsplus.cmd") -Encoding ascii

Write-Host "Portable package created: $OutDir"
