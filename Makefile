CC=gcc
CFLAGS=-Wall -Werror -g
LDFLAGS=

all: lisod

lisod: src/io.o src/server.o src/lisod.o src/log.o src/http_client.o src/http_parser.o src/request_handler.o
	$(CC) $^ -o lisod -lssl -lcrypto

clean:
	rm -rf lisod
	cd src; make clean

tar:
	(make clean; cd ..; tar cvf 15-441-project-1.tar 15-441-project-1)
