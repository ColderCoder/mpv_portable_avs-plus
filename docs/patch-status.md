# AVS+ patch status

Current stage:

- Build framework: ready
- Portable packaging: ready
- FFmpeg integration point: ready
- Verified AVS+ decoder patch: not yet imported

The next required artifact is a real libcavs/AVS+ patch series. A fake patch is intentionally not included because it would produce a normal cavs decoder that still fails on AVS+ HDTV streams.

Validation target:

```
No sequence header decoded yet
unexpected start code 0x1b6
```

must disappear when playing AVS+ streams.
