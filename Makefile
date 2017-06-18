CC=gcc
CFLAGS=-lpthread -lncurses

SERVER=src/mtk/mcomm/server
CLIENT=src/mtk/mcomm/client
COMMON=src/mtk/mcomm

OUT=bin

SERVER_FILES=$(SERVER)/main.c
CLIENT_FILES=$(CLIENT)/main.c $(CLIENT)/tui.h $(CLIENT)/tui.c
COMMON_FILES=$(COMMON)/types.h $(COMMON)/vector.h $(COMMON)/vector.c

all: server client
server: $(SERVER_FILES) $(COMMON_FILES)
	$(CC) $(SERVER_FILES) $(COMMON_FILES) -g -o $(OUT)/server $(CFLAGS)
client: $(CLIENT_FILES) $(COMMON_FILES)
	$(CC) $(CLIENT_FILES) $(COMMON_FILES) -g -o $(OUT)/client $(CFLAGS)
clean:
	rm bin/*
