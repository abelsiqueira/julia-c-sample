CC = gcc
CFLAGS = -Wall -Wextra
OBJFLAGS = -fPIC

SRCS = dot.c
OBJS = $(patsubst %.c,%.o,$(SRCS))
EXEC = main.tst
LIB = libcjulia.so

all: $(EXEC)
	@for x in $(EXEC); do \
		LD_LIBRARY_PATH=".:$$LD_LIBRARY_PATH" ./$$x; \
	done

%.tst: %.c $(LIB)
	$(CC) -o $@ -L. $< -lcjulia $(CFLAGS)

$(LIB): $(OBJS)
	$(CC) -shared -o $(LIB) $(OBJS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean purge:
	rm -f $(OBJS) $(EXEC) $(LIB)
