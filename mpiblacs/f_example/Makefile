# CONDAEXE is for example: /path/to/miniconda/bin/conda
# CONDABIN is for example: /path/to/miniconda/bin
# CONDADIR is for example: /path/to/miniconda

CONDAEXE = $(shell which conda)
CONDABIN = $(dir $(CONDAEXE))
CONDADIR = $(realpath $(CONDABIN)/..)

default: test

all: hello dot

hello: hello.o
	mpif90 -g -o $@ $< -L$(CONDADIR)/lib \
	-lblacsF77init_MPI-linux-64-0 \
	-lblacs_MPI-linux-64-0 \
	-lblacsF77init_MPI-linux-64-0

dot: dot.o
	mpif90 -g -o $@ $< -L$(CONDADIR)/lib \
	-lblacsF77init_MPI-linux-64-0 \
	-lblacs_MPI-linux-64-0 \
	-lblacsF77init_MPI-linux-64-0 \
	-lf77blas -latlas

%.o: %.f90
	mpif90 -g -fPIC -c $< 

test: dot
	mpirun -n 4 ./dot

clean:
	rm -f *.o hello dot
