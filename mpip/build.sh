#!/bin/bash
set -o errexit
set -o pipefail

./configure \
    --prefix=$PREFIX \
    --enable-dwarf \
    CFLAGS=-I$PREFIX/include \
    LDFLAGS=-L$PREFIX/lib

LOGNAME=$USER \
    make -j$CPU_COUNT

make install
