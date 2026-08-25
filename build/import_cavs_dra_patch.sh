#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VENDOR="$ROOT/patches/vendor"

mkdir -p "$VENDOR"

if [ -z "${CAVS_DRA_PATCH_URL:-}" ]; then
    echo "CAVS_DRA_PATCH_URL is not set."
    echo "Provide a verified AVS+/DRA patch source before building."
    exit 2
fi

curl -L "$CAVS_DRA_PATCH_URL" -o "$VENDOR/cavs-dra.patch"

echo "Imported patch: $VENDOR/cavs-dra.patch"
