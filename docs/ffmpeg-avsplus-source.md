# FFmpeg AVS+ integration source

## Selected upstream direction

The project will use the FFmpeg-AVSPlus code base as the reference implementation for the AVS decoder integration.

Reference:

- xeonliu/FFmpeg-AVSPlus

The upstream README identifies `cavs` support for Chinese AVS including Jizhun and Guangdian Profile.

## Integration plan

1. Use FFmpeg-AVSPlus as the FFmpeg base instead of patching stock FFmpeg first.
2. Build FFmpeg libraries.
3. Build mpv against the resulting FFmpeg libraries.
4. Package portable Windows x64 output.

This avoids maintaining a fragile hand-generated patch against upstream FFmpeg releases.

## First validation target

Input:

- MPEG-TS
- AVS+ HDTV 1920x1080 25fps
- AC-3 5.1 audio

Success condition:

- Video decoder opens normally.
- No `unexpected start code 0x1b6`.
- No `No sequence header decoded yet`.
