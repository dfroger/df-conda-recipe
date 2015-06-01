#!/bin/bash

for COMP in gcc g++ cc c++
do
    ln -s $PREFIX/bin/ccache $PREFIX/bin/$COMP  
done
