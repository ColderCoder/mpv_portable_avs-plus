#!/usr/bin/env bash
set -e

# Placeholder for importing a verified AVS+ FFmpeg patch series.
# This intentionally fails instead of silently building a non-AVS+ FFmpeg.

PATCH_DIR="$(dirname "$0")/../patches"

if [ ! -f "$PATCH_DIR/ffmpeg-cavs-avsplus.patch" ]; then
  echo "Missing ffmpeg-cavs-avsplus.patch"
  echo "Do not build until AVS+ patch is available."
  exit 1
fi

echo "AVS+ patch found"
