#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

export CC=clang
export CXX=clang++

export CFLAGS='-arch x86_64'
export CXXFLAGS='-arch x86_64'

export FCFLAGS="-arch x86_64"
export FFLAGS="-arch x86_64"

SDK_10_5_STATIC_LIB_DIR=/Developer/SDKs/MacOSX10.5.sdk/usr/lib

export LDFLAGS="-arch x86_64 -L$SDK_10_5_STATIC_LIB_DIR"

./configure --prefix=$PREFIX --disable-fc --disable-f77
make -j$CPU_COUNT
make install
