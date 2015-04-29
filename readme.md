Description
===========

This repo contains a set of docker scripts to install the latest,
working version of clash.

Prepare installation
====================

Linux
-----

The `Dockerfile` should be good to go.

OSX
---

Init boot2docker:

    $(boot2docker shellinit)

Creation of the container
=========================

Create:

    docker build -t clashimg .

Remove the container

    docker rmi clashimg

Setup folder sharing (creates a container named `my-data`)

    $ docker run -v /data --name my-data busybox true
    $ docker run --rm -v /usr/local/bin/docker:/docker -v /var/run/docker.sock:/docker.sock svendowideit/samba my-data
    $ boot2docker ip

Usage
=====

-   Connect to the container:

        docker run -i -t clashimg /bin/bash

    or, to share data with `my-data`

        docker run -it --volumes-from my-data clashimg

-   To share data with `my-data` from the host (and thus with
    `clashimg`):

    on OSX, mount this:

        cifs://192.168.59.103/data    # This will mount on /Volumes/data

    on Windows mount this:

        \\192.168.59.103\data

-   List of current Docker images

        docker images

Using clash
===========

The Clash compiler can be found in /root/.cabal/bin/clash
