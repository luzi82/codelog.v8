#!/bin/bash

./prepare_clean.sh || exit $?
./prepare.sh || exit $?
./build_native.sh || exit $?
./build_android.sh || exit $?

pushd test/000_get_started
./build.sh || exit $?
./hello_world || exit $?
popd
