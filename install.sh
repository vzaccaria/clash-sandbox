#!/bin/bash

sudo apt-key adv  --keyserver keyserver.ubuntu.com --recv-keys 575159689BEFB442 --force-yes
echo 'deb http://download.fpcomplete.com/ubuntu trusty main'| sudo tee /etc/apt/sources.list.d/fpco.list
sudo apt-get update

sudo apt-get install -y haskell-platform
sudo apt-get install -y stack
sudo apt-get install -y git
