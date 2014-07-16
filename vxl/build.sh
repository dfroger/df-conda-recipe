# See: http://vxl.sourceforge.net/releases/install-release.html
VXLSRC=$PWD
cd ..
mkdir bin
cd bin
VXLBIN=$PWD

cmake $VXLSRC \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DBZIP2_INCLUDE_DIR=$PREFIX/include \
    -DBZIP2_LIBRARIES=$PREFIX/lib/libbz2.a \
