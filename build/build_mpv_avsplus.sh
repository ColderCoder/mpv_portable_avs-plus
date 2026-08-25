#!/usr/bin/env bash
set -e

ROOT="$PWD"
PREFIX="$ROOT/out/mpv"
SRC="$ROOT/src/mpv"

mkdir -p "$PREFIX"

if [ ! -d "$SRC" ]; then
  git clone https://github.com/mpv-player/mpv.git "$SRC"
fi

cd "$SRC"

meson setup build --prefix="$PREFIX" --buildtype=release || \
  meson setup --reconfigure build --prefix="$PREFIX" --buildtype=release

meson compile -C build
meson install -C build
