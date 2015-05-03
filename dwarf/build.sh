#!/bin/bash
set -o errexit
set -o pipefail

export C_INCLUDE_PATH=$PREFIX/include
export CPLUS_INCLUDE_PATH=$PREFIX/include
export LIBRARY_PATH=$PREFIX/lib

./configure \
    --enable-shared

make -j$CPU_COUNT all

cp dwarfdump/dwarfdump $PREFIX/bin
cp dwarfdump/dwarfdump.conf $PREFIX/lib
cp libdwarf/libdwarf.so  $PREFIX/lib
