#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

export CC=clang
export CXX=clang++

export LIBS="-lgfortran"
export DYLD_LIBRARY_PATH=$PREFIX/lib

export CFLAGS='-arch x86_64'
export CXXFLAGS='-arch x86_64'

export FCFLAGS="-arch x86_64"
export FFLAGS="-arch x86_64"

GFORTRAN_DYNAMIC_LIB_DIR=$PREFIX/lib
SDK_10_5_STATIC_LIB_DIR=/Developer/SDKs/MacOSX10.5.sdk/usr/lib

export LDFLAGS="-arch x86_64 -L$GFORTRAN_DYNAMIC_LIB_DIR -L$SDK_10_5_STATIC_LIB_DIR"

./configure --prefix=$PREFIX
make -j$CPU_COUNT
make install
