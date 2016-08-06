CONDA_CFLAGS="-I$CONDA_PREFIX/include"
CONDA_LDFLAGS="-L$CONDA_PREFIX/lib -Wl,-rpath,$CONDA_PREFIX/lib"
CONDA_LIB="-lncurses -lxml2"
# ncurses required by readline

./configure \
    pcre_CFLAGS="$CONDA_CFLAGS" \
    pcre_LIBS="$CONDA_LDFLAGS -lpcre" \
    libxml2_CFLAGS="$CONDA_CFLAGS -I$CONDA_PREFIX/include/libxml2" \
    libxml2_LIBS="$CONDA_LDFLAGS" \
    CFLAGS="$CONDA_CFLAGS" \
    LDFLAGS="$CONDA_LDFLAGS" \
    LIBS="$CONDA_LIB" \
    --with-readline=$CONDA_PREFIX \
    --prefix=$PREFIX

make 2>&1 | tee make.log

make install 2>&1 | tee make_install.log
