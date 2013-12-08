#!/bin/bash

g++ -I../../v8/include hello_world.cpp \
  -o hello_world \
  ../../v8/out/native/obj.target/tools/gyp/libv8_base.x64.a \
  ../../v8/out/native/obj.target/tools/gyp/libv8_snapshot.a \
  ../../v8/out/native/obj.target/third_party/icu/libicu{i18n,uc,data}.a \
  -lrt \
  -lpthread
