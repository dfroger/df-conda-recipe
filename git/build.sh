LDFLAGS=-L$PREFIX/lib
./configure \
    --prefix=$PREFIX
make -j$CPU_COUNT
make install
soften --verbose --relative-path $PREFIX
