./autogen.sh
./configure \
    --prefix=$PREFIX  \
    --without-python # Seems that Python 3 not supported
make
make install
