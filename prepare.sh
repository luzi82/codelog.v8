#!/bin/bash

# From http://code.google.com/p/v8/wiki/D8OnAndroid
if [ ! -f "android-ndk32-r10-linux-x86_64.tar.bz2" ] ; then
	echo "wget Android NDK"
	wget -q http://dl.google.com/android/ndk/android-ndk32-r10-linux-x86_64.tar.bz2 || exit $?
fi

if [ ! -d android-ndk-r10 ] ; then
	tar -xjf android-ndk32-r10-linux-x86_64.tar.bz2 || exit $?
fi

# Compile v8 require gclient
if [ ! -d depot_tools ] ; then
	git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git || exit $?
fi
pushd depot_tools
	git pull || exit $?
	echo "depot_tools git hash"
	git rev-parse HEAD || exit $?
popd
export PATH=`pwd`/depot_tools:"$PATH"

# From http://code.google.com/p/v8/wiki/BuildingWithGYP
if [ ! -d v8 ] ; then
	git clone git://github.com/v8/v8.git || exit $?
	pushd v8
		git checkout trunk || exit $?
	popd
fi
pushd v8
	git pull || exit $?
	echo "v8 git hash"
	git rev-parse HEAD || exit $?
	make dependencies -j 9 || exit $?
popd
