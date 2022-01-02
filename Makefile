NAME = chibicc
CFLAGS	= -std=c11 -g -fdiagnostics-color=always -static -fno-common
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

$(OBJS): *.h

test: $(NAME)
	./test.sh

clean:
	rm -f chibicc $(OBJS) *~ tmp*

.PHONY: all test clean
