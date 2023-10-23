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


## Vanilla Drivers

This branch contains modifications to drivers and does not apply any changes
to the engine itself.

* **DirectX 9 Driver** - A native 32-bit DirectX 9 driver, with the following
  patches:
  * Fix when switching between fullscreen to windowed.
  * Fix for multipass textures not properly rendering, such as UDamage (Amp).


# Building

See the [Building Guide](doc/building.md) for how to build UT2004 with these
patches.
