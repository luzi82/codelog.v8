#/bin/bash

./prepare.sh || exit $?
./build_native.sh || exit $?
./build_android.sh || exit $?

