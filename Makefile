# CFLAGS=-ggdb -Wall -Wextra

# all: hello

# hello: hello.c
# 		gcc $(CFLAGS) -o hello hello.c

CFLAGs=-Wall -Wextra -ggdb

all: hello hello.i hello.s

hello.o: hello.c
		gcc $(CFLAGS) -Wa,-a=hello.lst -c hello.c

hello: hello.o
		gcc $(CFLAGS) -Bstatic -Wl,-Map=hello.map -o hello hello.o

hello.i: hello.c
		gcc -E hello.c >hello.i

hello.s: hello.c
		gcc -S hello.c

# adding verbose for seeing all command line
verbose:
		gcc -v $(CFLAGS) -Wextra -c hello.c

# cleaning after compilation
clean:
		rm -f hello hello.i hello.s hello.o