#/bin/bash

# From http://code.google.com/p/v8/wiki/D8OnAndroid
# wget http://dl.google.com/android/android-sdk_r22.3-linux.tgz
# tar -xzf android-sdk_r22.3-linux.tgz

# From http://code.google.com/p/v8/wiki/D8OnAndroid
wget http://dl.google.com/android/ndk/android-ndk32-r10-linux-x86_64.tar.bz2
tar -xjf android-ndk32-r10-linux-x86_64.tar.bz2

# Compile v8 require gclient
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=`pwd`/depot_tools:"$PATH"

# From http://code.google.com/p/v8/wiki/BuildingWithGYP
git clone git://github.com/v8/v8.git
cd v8
make dependencies

