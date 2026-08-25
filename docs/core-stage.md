# AVS+ core integration stage

Current focus:

```
ffmpeg_cavs_dra source
        |
        v
FFmpeg cavs decoder integration
        |
        v
mpv linked against patched FFmpeg
```

The project will not ship a release until the resulting decoder is tested against AVS+ HDTV TS streams.

Required validation:

- 1920x1080 AVS+ video
- MPEG-TS container
- AC-3 5.1 audio
- no `unexpected start code 0x1b6`
- no `No sequence header decoded yet`

Patch integration is the current blocking item.
