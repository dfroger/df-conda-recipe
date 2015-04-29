#!/bin/bash
set -o errexit
set -o pipefail

if [ -z "$OSX_ARCH" ]
then
    :
else
    export CC=clang
    export CXX=clang++

    export CFLAGS='-arch x86_64'
    export CXXFLAGS='-arch x86_64'

    SDK_10_5_STATIC_LIB_DIR=/Developer/SDKs/MacOSX10.5.sdk/usr/lib
    export LDFLAGS="-arch x86_64 -L$SDK_10_5_STATIC_LIB_DIR"
fi

./configure \
    --prefix=$PREFIX \
    --disable-fortran \
    --disable-fc \
    --disable-f77 \
    --enable-fast=all,O3 \
    --enable-shared

make -j$CPU_COUNT

make install
