# CONDAEXE: /path/to/miniconda/bin/conda
# CONDABIN: /path/to/miniconda/bin
# CONDADIR: /path/to/miniconda

CONDAEXE = $(shell which conda)
CONDABIN = $(dir $(CONDAEXE))
CONDADIR = $(realpath $(CONDABIN)/..)

blas2C: blas2C.o blaio.o
	gcc -o $@ $^ \
			-L$(CONDADIR)/lib \
			-Wl,-rpath,-L$(CONDADIR)/lib \
			-lcblas -lf77blas -latlas

%.o: %.c
	gcc -fPIC \
			-I$(CONDADIR)/include  \
			-c $<

clean:
	rm -f *.o blas2C
