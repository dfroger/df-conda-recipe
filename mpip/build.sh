#!/bin/bash
set -o errexit
set -o pipefail

./configure \
    --prefix=$PREFIX \
    CFLAGS=-I$PREFIX/include \
    LDFLAGS=-L$PREFIX/lib

# TODO: Address to Source Lookup

LOGNAME=$USER \
    make # -j$CPU_COUNT

make install
