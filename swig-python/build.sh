#!/bin/bash

./configure \
    --prefix=$PREFIX \
    --without-tcl \
    --without-perl5 \
    --without-octave \
    --without-java \
    --without-javascript \
    --without-android \
    --without-guile \
    --without-mzscheme \
    --without-ruby \
    --without-php \
    --without-ocaml \
    --without-pike \
    --without-chicken \
    --without-csharp \
    --without-lua \
    --without-allegrocl \
    --without-clisp \
    --without-r \
    --without-go \
    --without-d
make
make install
mv $PREFIX/bin/swig $PREFIX/bin/swig-wrong-hard-coded-libswig
cp $RECIPE_DIR/swig $PREFIX/bin/
