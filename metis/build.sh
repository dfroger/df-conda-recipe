# See metis-5.1.0/Install.txt
sed 's/#define IDXTYPEWIDTH 32/#define IDXTYPEWIDTH 64/' -i include/metis.h
sed 's/#define REALTYPEWIDTH 32/#define REALTYPEWIDTH 64/' -i include/metis.h

make config shared=1 prefix=$PREFIX
make install
