# Safe shell
set -o nounset
set -o errexit
set -o pipefail

CONDA_CFLAGS="-I$CONDA_PREFIX/include"
CONDA_LDFLAGS="-L$CONDA_PREFIX/lib -Wl,-rpath,$CONDA_PREFIX/lib"
CONDA_LIB="-lncurses -lxml2"
# ncurses required by readline


LOG_DIR=$RECIPE_DIR/log
mkdir -p $LOG_DIR


START=$(date +%s.%N)
./configure \
    pcre_CFLAGS="$CONDA_CFLAGS" \
    pcre_LIBS="$CONDA_LDFLAGS -lpcre" \
    libxml2_CFLAGS="$CONDA_CFLAGS -I$CONDA_PREFIX/include/libxml2" \
    libxml2_LIBS="$CONDA_LDFLAGS" \
    CFLAGS="$CONDA_CFLAGS" \
    LDFLAGS="$CONDA_LDFLAGS" \
    LIBS="$CONDA_LIB" \
    --with-readline=$CONDA_PREFIX \
    --prefix=$PREFIX \
    2>&1 | tee $LOG_DIR/configure.log
END=$(date +%s.%N)
echo "configure time: $(echo "$END - $START" | bc) seconds" > $LOG_DIR/time.log


START=$(date +%s.%N)
make 2>&1 | tee $LOG_DIR/build.log
END=$(date +%s.%N)
echo "build time: $(echo "$END - $START" | bc) seconds" >> $LOG_DIR/time.log


START=$(date +%s.%N)
make install 2>&1 | tee $LOG_DIR/install.log
END=$(date +%s.%N)
echo "install time: $(echo "$END - $START" | bc) seconds" >> $LOG_DIR/time.log
