#/bin/bash

# From http://code.google.com/p/v8/wiki/BuildingWithGYP
cd v8
make native -j 9 || exit $?

