#!/bin/bash

ZLIB_INC=$PREFIX/include
ZLIB_LIB=$PREFIX/lib

./configure \
    --prefix=$PREFIX \
    CLAGS="-g" \
    CPPFLAGS="-I$ZLIB_INC" \
    LDFLAGS="-L$ZLIB_LIB"
make
make install
