CC = gcc
CFLAGS = -Wall -Wextra

SRCS = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SRCS))

all: main
	./main

main: $(OBJS)
	$(CC) -o main $(OBJS) $(CFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean purge:
	rm -f $(OBJS) main
