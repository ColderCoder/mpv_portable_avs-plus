# FFmpeg / AVS+ compatibility matrix

This project locks FFmpeg versions before applying AVS+ changes.

## Current target

- Target: Windows x64
- Container: MPEG-TS
- Video: AVS+ (AVS1-P16 / cavs)
- Audio: AC-3

## Policy

Do not claim AVS+ support unless the resulting binary can decode a real AVS+ stream.

Validation failure signatures:

```
unexpected start code 0x1b6
No sequence header decoded yet
```

A successful build must pass an actual TS playback test.