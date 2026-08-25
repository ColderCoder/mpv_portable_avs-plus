# Current build plan

## Phase 1 - media stack

1. Fetch fixed FFmpeg and mpv sources.
2. Apply verified AVS+ / libcavs patch stack.
3. Build FFmpeg shared libraries.
4. Build mpv against the patched FFmpeg.

## Validation target

Input:

- MPEG-TS
- Video: cavs AVS+
- 1920x1080 25fps
- Audio: AC-3 5.1

Failure messages to eliminate:

- unexpected start code 0x1b6
- No sequence header decoded yet

## Current blocker

The remaining critical item is the real AVS+ decoder patch integration. The repository intentionally does not include an unverified fake patch.
