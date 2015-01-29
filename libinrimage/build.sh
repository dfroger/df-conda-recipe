#!/bin/bash

F77=/usr/bin/gfortran \
LDFLAGS=-L$PREFIX/lib \
./configure \
    --disable-build-fonts \
    --disable-libtiff \
    --disable-netpbm \
    --disable-libjpeg \
    --disable-libpng \
    --enable-shared=yes \
    --enable-static=no \
    --prefix=$PREFIX
cd src/inrimage
make
make install

mkdir -p $PREFIX/include/inrimage
cd $SRC_DIR/src/h/inrimage
cp image *.h $PREFIX/include/inrimage
