./configure \
    CPPFLAGS="-I$PREFIX/include" \
    CFLAGS="-g -O3" \
    --prefix=$PREFIX \
    --disable-block-signals
make -j8
make install
