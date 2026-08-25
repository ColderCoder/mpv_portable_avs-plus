#!/usr/bin/env bash
set -e

PREFIX="$PWD/out"
SRC="$PWD/src"

mkdir -p "$SRC" "$PREFIX"

# Fetch FFmpeg source and apply AVS+ patches here.
# Expected result: libavcodec with libcavs/AVS+ support.

echo "TODO: clone patched FFmpeg source"
echo "TODO: apply ffmpeg_cavs_dra/libcavs patch"
echo "TODO: configure mingw64 build"

echo "FFmpeg AVS+ build stage placeholder"
