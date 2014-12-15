#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

export CC=clang
export CXX=clang

#export LIBS="-lgfortran"
#export DYLD_LIBRARY_PATH=$PREFIX/lib

export CFLAGS='-arch x86_64'
export CXXFLAGS='-arch x86_64'

export FCFLAGS="-arch x86_64"
export FFLAGS="-arch x86_64"

#SDK_10_5_STATIC_LIB_DIR=/Developer/SDKs/MacOSX10.5.sdk/usr/lib

#export LDFLAGS="-arch x86_64 -L$SDK_10_5_STATIC_LIB_DIR"
export LDFLAGS="-arch x86_64 -L$PREFIX/lib"

python setup.py build --mpicc=$PREFIX/bin/mpicc
python setup.py install --prefix=$PREFIX
