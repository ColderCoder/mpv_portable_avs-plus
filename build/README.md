# Build plan

Target:

Windows x64 portable mpv with AVS+ support.

Pipeline:

1. Build patched FFmpeg
2. Integrate libcavs AVS+ decoder
3. Build mpv against patched FFmpeg
4. Package portable directory

Expected runtime:

```
mpv.exe
 + patched FFmpeg DLLs
 + libcavs
 + portable_config
```

The first milestone is producing a reproducible FFmpeg build.
