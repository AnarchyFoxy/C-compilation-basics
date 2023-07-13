CFLAGS=-gdb -Wall Wextra

all: hello

hello: hello.c
		gcc $(CFLAGS) -o hello hello.c