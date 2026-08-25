#!/usr/bin/env bash
set -e

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
source "$ROOT/build/versions.env"

export ROOT
export FFMPEG_TAG
export MPV_BRANCH
export TARGET

mkdir -p "$ROOT/src" "$ROOT/out"

echo "ROOT=$ROOT"
echo "FFMPEG_TAG=$FFMPEG_TAG"
echo "MPV_BRANCH=$MPV_BRANCH"
echo "TARGET=$TARGET"
