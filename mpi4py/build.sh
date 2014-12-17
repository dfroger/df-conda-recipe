#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

export CC=clang
export CXX=clang

export CFLAGS='-arch x86_64'
export CXXFLAGS='-arch x86_64'

export FCFLAGS="-arch x86_64"
export FFLAGS="-arch x86_64"

export LDFLAGS="-arch x86_64 -L$PREFIX/lib"

python setup.py build --mpicc=$PREFIX/bin/mpicc
python setup.py install --prefix=$PREFIX
