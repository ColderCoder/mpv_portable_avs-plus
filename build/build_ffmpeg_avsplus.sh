#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/src/FFmpeg-AVSPlus"
OUT="$ROOT/out/ffmpeg"

mkdir -p "$OUT"

cd "$SRC"

./configure \
  --prefix="$OUT" \
  --enable-gpl \
  --enable-shared \
  --disable-static \
  --disable-doc \
  --disable-debug

make -j"$(nproc)"
make install

"$OUT/bin/ffmpeg" -decoders | grep -i cavs
