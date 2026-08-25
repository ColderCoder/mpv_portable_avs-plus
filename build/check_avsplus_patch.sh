#!/usr/bin/env bash
set -e

PATCH="$PWD/patches/ffmpeg-cavs-avsplus.patch"

if [ ! -s "$PATCH" ]; then
  echo "ERROR: AVS+ patch is missing."
  echo "A real libcavs/AVS+ FFmpeg patch must be supplied before building."
  exit 1
fi

echo "AVS+ patch found: $PATCH"
