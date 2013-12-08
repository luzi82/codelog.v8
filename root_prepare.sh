#/bin/bash

# install required file
sudo apt-get install git subversion build-essential

# http://stackoverflow.com/questions/12591629/gcc-cannot-find-bits-predefs-h-on-i686
sudo apt-get install gcc-multilib

# http://code.google.com/p/chromium/wiki/AndroidBuildInstructions
sudo apt-get install g++-multilib
