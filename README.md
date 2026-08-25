# mpv_portable_avs-plus

Portable mpv layout for AVS+ HDTV TS playback.

## Goal

Play Chinese AVS+ HDTV recordings:

- Video: AVS+ / AVS1-P16 (`cavs`)
- Container: MPEG-TS
- Audio: AC-3 5.1

## Important

A normal mpv build uses FFmpeg's built-in `cavs` decoder, which may fail on AVS+ streams. This portable package is designed for an mpv build linked with a libcavs-enabled FFmpeg.

## Layout

```
mpv.exe
mpv.conf
portable_config/
ffmpeg-dlls/
```

## Configuration

The included config:

- disables hardware decode for AVS+
- keeps MPEG-TS demuxing
- keeps AC-3 passthrough available

## Test

Run:

```
mpv your_avsplus.ts
```

A working build should open AVS+ without:

```
unexpected start code 0x1b6
No sequence header decoded yet
```
