#/bin/bash

# From http://code.google.com/p/v8/wiki/D8OnAndroid
# export PATH=${PWD}/android-sdk-linux/platform_tools:${PATH}
export ANDROID_NDK_ROOT=${PWD}/android-ndk-r9b

# From http://code.google.com/p/v8/wiki/BuildingWithGYP
cd v8
make dependencies
make android_arm.release -j 9
