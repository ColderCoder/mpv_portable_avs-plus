#!/usr/bin/env bash
set -e

ROOT="$PWD"
FFMPEG_SRC="$ROOT/src/ffmpeg"
PATCH_DIR="$ROOT/patches"

if [ ! -d "$FFMPEG_SRC" ]; then
  echo "FFmpeg source missing: $FFMPEG_SRC"
  exit 1
fi

PATCH="$PATCH_DIR/ffmpeg-cavs-avsplus.patch"

if [ ! -f "$PATCH" ]; then
  echo "Missing AVS+ patch: $PATCH"
  echo "The build will stop until a verified libcavs patch is imported."
  exit 2
fi

cd "$FFMPEG_SRC"
patch -p1 < "$PATCH"

echo "FFmpeg AVS+ patch applied successfully"
