#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MPV="$ROOT/out/mpv/bin/mpv"

if [ ! -x "$MPV" ]; then
    echo "missing built mpv: $MPV"
    exit 1
fi

echo "Checking mpv binary"
"$MPV" --version | head -n 3

echo "mpv build check passed"
