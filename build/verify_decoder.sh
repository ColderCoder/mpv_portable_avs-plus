#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
FFMPEG="$ROOT/out/ffmpeg/bin/ffmpeg"

if [ ! -x "$FFMPEG" ]; then
    echo "missing built ffmpeg: $FFMPEG"
    exit 1
fi

echo "Checking AVS+ decoder support"
"$FFMPEG" -decoders | grep -i cavs

echo "Decoder check passed"
