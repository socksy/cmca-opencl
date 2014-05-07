CC = clang
CFLAGS = -g
uname := $(shell uname)
ifeq ($(uname),Darwin)
	LDFLAGS = -framework OpenCL
endif
ifeq ($(uname),Linux)
	LDFLAGS = -lOpenCL
endif

all: ants

ants: ants.o colony.o
	$(CC) $(LDFLAGS) -o $@ $^

ants.o: ants.c
	$(CC) $(CFLAGS) -c -o $@ $<

colony.o: colony.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f ants *.o *~
