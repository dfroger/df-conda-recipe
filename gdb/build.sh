export LDFLAGS="-Wl,-rpath,$PREFIX/lib -L$PREFIX/lib"

./configure \
    --prefix=$PREFIX \
    --with-python=$PREFIX/bin

make -j$CPU_COUNT

make install
