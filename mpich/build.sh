#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

export CC=clang
export CXX=clang

export LIBS="-lgfortran"
export DYLD_LIBRARY_PATH=$PREFIX/lib

export CFLAGS='-arch x86_64'
export CXXFLAGS='-arch x86_64'

export FCFLAGS="-arch x86_64"
export FFLAGS="-arch x86_64"

export LDFLAGS="-arch x86_64 -L$PREFIX/lib -L/Developer/SDKs/MacOSX10.5.sdk/usr/lib"

./configure --prefix=$PREFIX
make
make install
