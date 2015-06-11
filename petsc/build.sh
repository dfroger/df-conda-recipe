export PETSC_DIR=$PWD
export PETSC_ARCH=linux-64-debug

ln -s $PREFIX/lib/libgfortran.so.1 $PREFIX/lib/libgfortran1.so

LC_ALL=C python config/configure.py \
    LDFLAGS="-L$PREFIX/lib -lgfortran -lgfortran1" \
    --prefix=$PREFIX \
    --with-debugging=yes \
    --with-dynamic-loading \
    --with-shared-libraries \
    --with-blas-lapack-dir=$PREFIX/lib \
    --with-mpi-dir=$PREFIX \
    --with-metis-dir=$PREFIX  \
    --with-parmetis-dir=$PREFIX \
    --with-scalapack-dir=$PREFIX

LC_ALL=C make all

make install
