#!/bin/bash

# http://www.boost.org/doc/libs/1_55_0/more/getting_started/unix-variants.html

#./bootstrap.sh --prefix=$PREFIX 
#./b2 install

mkdir -p $PREFIX/boost_1_55_0
cp -r boost $PREFIX/boost_1_55_0
