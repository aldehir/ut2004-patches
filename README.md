# UT2004 Patches

This repository contains a series of native patches for UT2004. For the time
being, the patches are only for Windows 32-bit builds.

Due to licensing concerns (and the legality of it), this repository does not
contain the entire UT2004 source code. It only contains patch files to apply
the changes on top of the original UT2004 v3369 source.


## Installation

Releases contain the entirety of changes made in this repository.  Download the
latest release and install directly on top of your UT2004 installation.


## Changelog

### v3369.1

* Add support for framerates that require higher resolution than 1ms.
  UT2004's original timers caused framerates to vary wildly due to their low
  resolution. Now you can maintain any desired framerate.

* Fix the framerate limiting algorithm. UT2004 performed additional operations
  after limiting your framerate, resulting in a reported framerate less than
  MaxClientFrameRate. The limit is now applied after those operations to
  provide a more stable fps.

  * NOTE: You may notice that single player no longer hits up to 1000 fps. This
    was a misleading metric, as it only occurs when there are no OS events to
    process. The counter now reports an accurate fps.
