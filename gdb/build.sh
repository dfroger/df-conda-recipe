LDFLAGS=-L$PREFIX/lib
./configure \
    --prefix=$PREFIX \
    --with-python
make -j$CPU_COUNT
make install
