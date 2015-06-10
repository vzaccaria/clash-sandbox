Description
===========

This repo contains a set of docker scripts to install the latest,
working version of clash.

Installation
============

You need docker, either native (linux) or through boot2docker. If you
are on linux, jump to the following section.

If you are on OSX/Windows, install and init docker through the
boot2docker tool. On Mac you need to initialize the shell environment
before invoking docker:

    $(boot2docker shellinit)

Windows users should follow instructions on the boot2docker website.

If a "kernel extension not found error" is thrown, relaunch:

sudo /Library/Application\ Support/VirtualBox/LaunchDaemons/VirtualBoxStartup.sh start

Creation of the container (only once)
=====================================

To create the container:

    docker build -t clashimg . # In the directory containing the Dockerfile

To setup folder sharing with the `clashimg` container, you need another
container (called `my-data`)

    $ docker run -v /data --name my-data busybox true
    $ docker run --rm -v /usr/local/bin/docker:/docker -v /var/run/docker.sock:/docker.sock svendowideit/samba my-data
    $ boot2docker ip # You need this address when mounting the new folder.

After the creation of `my-data`, you should mount the folder on your
local filesystem;

-   on OSX, mount this:

        cifs://192.168.59.103/data \# This will mount on /Volumes/data

-   on Windows mount this:

        \\192.168.59.103\data

To wipe out the container (only when you dont need it anymore):

    docker rmi clashimg

Use (every time you want to compile something)
==============================================

To instantiate and connect to an instance of the container:

    docker run -it --volumes-from my-data clashimg

This will open a shell into an instance of the container `clashimg`. The
Clash compiler can be found in `/root/.cabal/bin/clash`. Beware that
only the data saved into `/data` will survive this container instance,
so be sure to work in `/data`.

When you exit the shell the instance is destroyed but `/data` remains to
be used in any other future instantiation of the container.

Using clash
===========

The Clash compiler can be found in /root/.cabal/bin/clash
