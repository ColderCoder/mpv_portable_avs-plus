#!/usr/bin/env bash
set -e

PREFIX="$PWD/out"
SRC="$PWD/src"

mkdir -p "$SRC" "$PREFIX"

cd "$SRC/FFmpeg-AVSPlus"

./configure \
  --prefix="$PREFIX" \
  --enable-gpl \
  --enable-shared \
  --disable-static \
  --disable-programs \
  --disable-doc

make -j$(nproc)
make install
