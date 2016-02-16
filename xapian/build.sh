./configure \
    CPPFLAGS=-I$PREFIX/include \
    LDFLAGS=-L$PREFIX/lib \
    --prefix=$PREFIX

#make -j$CPU_PROC
make # Consume to much processor/memory ressources

make install
