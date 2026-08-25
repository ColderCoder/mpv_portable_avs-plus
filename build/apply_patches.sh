#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
FFMPEG_SRC="$ROOT/src/ffmpeg"
PATCH="$ROOT/patches/vendor/ffmpeg-7.1.2_cavs_dra.patch"

if [ ! -d "$FFMPEG_SRC" ]; then
  echo "FFmpeg source missing: $FFMPEG_SRC"
  exit 1
fi

if [ ! -f "$PATCH" ]; then
  echo "Missing AVS+ patch: $PATCH"
  echo "Import the verified FFmpeg 7.1.2 cavs_dra patch first."
  exit 2
fi

cd "$FFMPEG_SRC"
patch -p1 < "$PATCH"

echo "FFmpeg 7.1.2 AVS+ patch applied successfully"
