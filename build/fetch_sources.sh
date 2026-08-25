#!/usr/bin/env bash
set -e

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
source "$ROOT/build/versions.env"

mkdir -p "$ROOT/src"

if [ ! -d "$ROOT/src/ffmpeg" ]; then
  git clone --depth 1 --branch "$FFMPEG_TAG" https://github.com/FFmpeg/FFmpeg.git "$ROOT/src/ffmpeg"
fi

if [ ! -d "$ROOT/src/mpv" ]; then
  git clone --depth 1 --branch "$MPV_BRANCH" https://github.com/mpv-player/mpv.git "$ROOT/src/mpv"
fi

echo "Sources ready"
