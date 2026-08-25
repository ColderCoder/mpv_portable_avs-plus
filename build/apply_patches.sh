#!/usr/bin/env bash
set -e

ROOT="$PWD"
FFMPEG_SRC="$ROOT/src/ffmpeg"
PATCH_DIR="$ROOT/patches"

if [ ! -d "$FFMPEG_SRC" ]; then
  echo "FFmpeg source missing: $FFMPEG_SRC"
  exit 1
fi

if [ -f "$PATCH_DIR/ffmpeg-cavs-avsplus.patch" ]; then
  cd "$FFMPEG_SRC"
  patch -p1 < "$PATCH_DIR/ffmpeg-cavs-avsplus.patch"
else
  echo "No AVS+ patch file present yet."
  echo "Waiting for verified ffmpeg_cavs_dra patch import."
fi
