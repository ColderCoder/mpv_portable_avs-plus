#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VENDOR="$ROOT/patches/vendor"

mkdir -p "$VENDOR"

PATCH_URL="${CAVS_DRA_PATCH_URL:-}"
PATCH_FILE="$VENDOR/ffmpeg-7.1.2_cavs_dra.patch"

if [ -z "$PATCH_URL" ]; then
    echo "CAVS_DRA_PATCH_URL is not set."
    echo "Provide the verified FFmpeg 7.1.2 AVS+/DRA patch source before building."
    exit 2
fi

curl -L "$PATCH_URL" -o "$PATCH_FILE"

echo "Imported patch: $PATCH_FILE"
