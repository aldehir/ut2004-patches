# Building


## Obtain the UT2004 3369 Source Code

The UT2004 sources are out there if you look hard enough. To assist, here are
the checksums of the zip archive:

```
MD5: da9dc1ce2dc977b7607ae46100b5b1f8
SHA1: e1e4ed8ba2d9f48db48bcdff05102b2aa754601a
```


## [Optional] Download the UT2BuildToolkit

I have compiled all the necessary tools, headers, and libraries necessary to
build UT2 into a single archive. Feel free to reach out if you'd like a copy.

Otherwise, you'll need a copy of VS2003, and the following build tools:

* [Meson](https://mesonbuild.com/)
* [Just](https://github.com/casey/just)

Launch the `UT2 Build Toolkit` terminal or the `Visual Studio .NET 2003 Command
Prompt`.


## Clone this repository

Clone this repository, we'll assume you cloned it to `C:\ut2004build\patches`.


## Extract the original UT2004 3369 source

Extract the original UT2004 3369 source code into your directory of choice, for
we'll assume you extracted it to `C:\ut2004build\UT2-Code`.


## Create a Git repository

Before we create a git repository, let's ignore a few files to speed things up.

Copy the `gitignore` file from the patch repository to your UT2004 source code
directory as `.gitignore`.

```console
cd C:\ut2004build\UT2-Code
cp C:\ut2004build\patches\gitignore .gitignore
```

Initialize your UT2004 source code repository and create a commit. 

```console
git init
git add .
git commit -m 'Initial commit'
```


## Apply patches

You can apply patches with `git-am`. It's not as streamlined as I'd like, but
people have been doing it for decades. To start off, patch everything.

```console
cd C:\ut2004build\UT2-Code
cat C:\ut2004build\patches\*.patch | git am
```

You should now have a UT2004 project with all patches applied. Note that if any
future patches are added, you will need to selectively add them. You cannot
reapply the same patch, git will yell at you.


## Build the source code

To build UT2004 in release mode:

```console
just
```

For debug mode:

```console
just debug=1
```


## Playing

The UT2004 source code does not contain the game assets needed to play. You
will need to copy the following directories from your UT2004 installation:

* Animations
* Music
* KarmaData
* Maps
* Sounds
* Textures
* StaticMeshes
* Help

Once done, you can execute `UT2004.exe` or run `just play`.
