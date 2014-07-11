export PETSC_DIR=$PWD
export PETSC_ARCH=linux-64-debug

#PREFIX=/local/froger/miniconda

python config/configure.py \
    CXXFLAGS=-m64  \
    CFLAGS=-m64 \
    FCFLAGS=-m64 \
    FFLAGS=-m64 \
    LDFLAGS="-l$PREFIX/lib/libgfortran.so.1" \
    --with-debugging=yes \
    --with-dynamic-loading \
    --with-shared-libraries \
    --with-blas-lapack-dir=$PREFIX/lib \
    --with-mpi-dir=$PREFIX \
    --with-metis-dir=$PREFIX  \
    --with-parmetis-dir=$PREFIX \
    --with-scalapack-dir=$PREFIX

#    --with-mumps-dir=$PREFIX
#   --with-superlu_dist-dir=$PREFIX  \

    #LDFLAGS="-L$PREFIX/lib -lgfortran" \
    #--FC_LINKER_FLAGS=-l/local/froger/miniconda/lib/libgfortran.so.1 \

