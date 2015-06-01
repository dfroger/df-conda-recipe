#!/bin/bash

ZLIB_INC=$PREFIX/include
ZLIB_LIB=$PREFIX/lib

./configure \
    --prefix=$PREFIX \
    CFLAGS="-g" \
    CPPFLAGS="-I$ZLIB_INC" \
    LDFLAGS="-L$ZLIB_LIB"
make
make install

for COMP in gcc g++ cc c++
do
    ln -s $PREFIX/bin/ccache $PREFIX/bin/$COMP  
done
