#!/usr/bin/env bash
set -e

PREFIX="$PWD/out"
SRC="$PWD/src"
FFMPEG_TAG=${FFMPEG_TAG:-n7.1.1}

mkdir -p "$SRC" "$PREFIX"

cd "$SRC"

if [ ! -d ffmpeg ]; then
  git clone --depth 1 --branch "$FFMPEG_TAG" https://github.com/FFmpeg/FFmpeg.git ffmpeg
fi

cd ffmpeg

# AVS+ patch stage
# Apply ffmpeg_cavs_dra/libcavs patch series here.
# The patch must extend cavs decoder with AVS1-P16 support.

./configure \
  --prefix="$PREFIX" \
  --enable-gpl \
  --enable-shared \
  --disable-programs \
  --disable-doc

make -j$(nproc)
make install
