main: main.o compute_pi.o
	mpicc -g -o $@ $^

%.o: %.c
	mpicc -g -c $<

clean:
	@rm -f main *.o
