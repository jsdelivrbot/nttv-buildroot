# NTtv Buildroot Fork
Buildroot is a simple, efficient and easy-to-use tool to generate embedded
Linux systems through cross-compilation.

The documentation can be found in docs/manual. You can generate a text
document with 'make manual-text' and read output/docs/manual/manual.text.
Online documentation can be found at http://buildroot.org/docs.html

## Getting Started

1. Clone this repo.
2. Ensure the nttv-root-filesystem submoudle is initialized. `cd nttv-root-filesystem`
3. If this directory is empty, initialize the submodule from the main nttv-buildroot direcotry. `git submodule init; git submodule update`

## Building Buildroot

To build and use the buildroot stuff, do the following:

1. run 'make menuconfig'
2. select the target architecture and the packages you wish to compile
3. run 'make'
4. wait while it compiles (this step will take hours)
5. find the .tar file in output/images/rootfs.tar

You do not need to be root to build or run buildroot.  Have fun!

Buildroot comes with a basic configuration for a number of boards. Run
'make list-defconfigs' to view the list of provided configurations.

## Updating root fileystem overlay

The Kopis NTtv Root Filesystem is included as a Git submodule. Whenever the root fs 
repository is updated, you will need to manually update the submodule here as well.

1. cd into the nttv-root-filesystem directory.
2. From here, pull your changes like you would in a regular nttv-root-filesystem repo, ex: `git pull` or `git checkout <root-fs-commit>`
3. cd back into the nttv-buildroot directory.
4. Commit your changes back to the nttv-buildroot repo. `git commit -am "Updated root-filesystem"`

## Development For Kopis NTtv Packages:

Buildroot has this sexy feature where you can create a local.mk file where you can specify certain packages (our packages) to instead of being cloned from the internet, rscoppied from a specified folder (a dev folder).

An example local.mk file might look like this:

```
NTTV_SYS_MONITOR_APP_V3_OVERRIDE_SRCDIR = ../nttv-system-monitor-application-v3/
```

When developing the package and your ready to test building it inside of build root, you can then run a command specific to your package to reload and build it:

```
$ make nttv-sys-monitor-app-v3-rebuild all
```

Happy building!
