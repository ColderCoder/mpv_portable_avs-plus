#!/usr/bin/env bash
set -e

mkdir -p src
cd src

if [ ! -d FFmpeg-AVSPlus ]; then
  git clone --depth 1 --branch release/8.0.1-avsplus https://github.com/xeonliu/FFmpeg-AVSPlus.git
fi
