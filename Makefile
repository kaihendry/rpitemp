CC = cc
SRC = rpi-ADT7301.c
OBJ = ${SRC:.c=.o}

all: temp

.c.o:
	@echo CC -c $<
	@${CC} -c ${CFLAGS} $<

temp: ${OBJ}
	@echo CC -o $@
	@${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	@rm -f temp ${OBJ}
