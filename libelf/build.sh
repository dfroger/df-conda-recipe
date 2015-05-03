#!/bin/bash
set -o errexit
set -o pipefail

./configure \
    --prefix=$PREFIX \
    --enable-shared

make -j$CPU_COUNT

make install
