#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PREFIX="$ROOT/out/mpv"
FFMPEG_PREFIX="$ROOT/out/ffmpeg"
SRC="$ROOT/src/mpv"

mkdir -p "$PREFIX"

if [ ! -d "$SRC" ]; then
  git clone --depth 1 https://github.com/mpv-player/mpv.git "$SRC"
fi

cd "$SRC"

PKG_CONFIG_PATH="$FFMPEG_PREFIX/lib/pkgconfig:${PKG_CONFIG_PATH:-}" \
meson setup build \
  --prefix="$PREFIX" \
  --buildtype=release || \
  PKG_CONFIG_PATH="$FFMPEG_PREFIX/lib/pkgconfig:${PKG_CONFIG_PATH:-}" \
  meson setup --reconfigure build --prefix="$PREFIX" --buildtype=release

meson compile -C build
meson install -C build
