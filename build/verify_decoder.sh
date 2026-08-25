#!/usr/bin/env bash
set -euo pipefail

# Decoder verification hook.
# This will be connected to the built ffmpeg/mpv binaries once the AVS+
# patch is integrated.

if [ -z "${1:-}" ]; then
    echo "usage: verify_decoder.sh input.ts"
    exit 1
fi

INPUT="$1"

echo "Testing: $INPUT"
echo "Expected: libcavs-enabled ffmpeg/mpv"
echo "Failure markers:"
echo "  unexpected start code 0x1b6"
echo "  No sequence header decoded yet"
