CPPFLAGS=-I$PREFIX/include \
LDFLAGS=-L$PREFIX/lib \
./configure \
    --prefix=$PREFIX

make -j $CPU_PROC

make install
