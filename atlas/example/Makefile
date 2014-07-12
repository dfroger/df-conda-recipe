# CONDAEXE: /path/to/miniconda/bin/conda
# CONDABIN: /path/to/miniconda/bin
# CONDADIR: /path/to/miniconda

CONDAEXE = $(shell which conda)
CONDABIN = $(dir $(CONDAEXE))
CONDADIR = $(realpath $(CONDABIN)/..)

example_blas: example_blas.o
	gcc -o $@ $^ \
			-L$(CONDADIR)/lib \
			-lcblas -lf77blas -latlas

%.o: %.c
	gcc -I$(CONDADIR)/include  \
			-c $<

clean:
	rm -f *.o example_blas
