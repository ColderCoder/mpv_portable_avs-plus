#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/src"
mkdir -p "$SRC"

# Source preparation stage for AVS+ decoder integration.
# The project intentionally does not pretend that the stock FFmpeg cavs
# decoder is AVS+ capable. The decoder source integration must come from a
# verified libcavs/AVS+ patch set before building releases.

if [ -d "$SRC/ffmpeg" ]; then
    echo "FFmpeg source already exists: $SRC/ffmpeg"
else
    echo "FFmpeg source directory is missing. Run the source fetch stage first."
fi

mkdir -p "$ROOT/patches/vendor"
echo "AVS+ patch source placeholder directory prepared."
