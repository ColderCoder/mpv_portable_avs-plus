#!/usr/bin/env bash
set -e

INPUT="$1"

if [ -z "$INPUT" ]; then
  echo "usage: test_avsplus.sh file.ts"
  exit 1
fi

# Placeholder for real regression test after patched FFmpeg is built.
# Expected future checks:
# 1. ffprobe reports cavs
# 2. mpv opens without AVS decode errors
# 3. AC3 stream remains available

echo "Testing: $INPUT"
