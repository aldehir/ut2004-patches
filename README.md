# UT2004 Patches

This repository contains a series of native patches for UT2004. For the time
being, the patches are only for Windows 32-bit builds.

Due to licensing concerns (and the legality of it), this repository does not
contain the entire UT2004 source code. It only contains patch files to apply
the changes on top of the original UT2004 v3369 source.


## Installation

Download the latest release and install directly on top of your UT2004
installation. Every release is standalone, you do not need to apply previous
patches to fully patch your UT2004 installation.


## Features

### High Resolution Timers

Higher resolution timers enable accurate framerate pacing and proper framerate
limiting.

### RawInput Support

The RawInput API is used for mouse input in modern games. Buffered Raw Input
offers minimal latency when using a high polling mouse.

To enable, run the following in console:
```
setmouseinput rawinputbuffer
```

To revert back to DirectInput:
```
setmouseinput directinput
```

### Fix for unintentional dodges

The dodge detection code contains a bug related to floating point imprecision.
This patch adds guard rails to prevent accidentally dodging.

### DirectX 9 Support

Included is the native DirectX 9 Driver with fixes for the following issues:
* Game hangs when switching from fullscreen to windowed mode.
* Textures that require multiple passes are not properly rendered, such as
  UDamage (Amp).

To enable, set your render device in `UT2004.ini`:
```ini
[Engine.Engine]
RenderDevice=D3D9Drv.D3D9RenderDevice
```

### Increased OpenGL Refresh Rate

The OpenGL driver now supports refresh rates up to 600 Hz.

To enable, set your render device in `UT2004.ini`:
```ini
[Engine.Engine]
RenderDevice=OpenGLDrv.OpenGLRenderDevice
```

# Building

See the [Building Guide](doc/building.md) for how to build UT2004 with these
patches.
