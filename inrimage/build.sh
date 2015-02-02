#!/bin/bash

# Note:
#  requires gfortran

if [ -z "$OSX_ARCH" ]
then
  FLAGS="LDFLAGS=-L$PREFIX/lib F77=/usr/bin/gfortran"
else
  FLAGS="CFLAGS=-Wno-return-type F77=/usr/local/bin/gfortran"
fi

tar xvzf $RECIPE_DIR/inrimage-4.6.5-fonts.tar.gz -C ..

./configure \
    --disable-build-fonts \
    --prefix=$PREFIX \
    $FLAGS

make # Note: -j make the build failed.
make install

# Remove this broken symbolic link.
rm $PREFIX/share/inrimage/WWW
