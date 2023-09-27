# UT2004 Patches

This repository contains a series of native patches for UT2004. For the time
being, the patches are only for Windows 32-bit builds.

Due to licensing concerns (and the legality of it), this repository does not
contain the entire UT2004 source code. It only contains patch files to apply
the changes on top of the original UT2004 v3369 source.


## Patches

* Replace `timeGetTime()` usage with the higher resolution timer
  `QueryPerformanceCounter()`.
* Replace usage of `rdtsc` with `QueryPerformanceCounter()`.
* Fix the Engine's framerate limiting mechanism.


## Installation

Releases contain the entirety of changes made in this repository.  Download the
latest release and install directly on top of your UT2004 installation.
