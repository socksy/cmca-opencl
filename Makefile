CC = clang
CFLAGS = -g
LDFLAGS = -framework OpenCL

all: ants

ants: ants.o colony.o
	$(CC) $(LDFLAGS) -o $@ $^

ants.o: ants.c
	$(CC) $(CFLAGS) -c -o $@ $<

colony.o: colony.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f ants *.o *~
