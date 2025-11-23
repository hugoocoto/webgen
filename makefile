SRC := $(wildcard common/*.ctml src/*.ctml)

run: wgen
	./wgen

wgen: webgen/webgen.c $(SRC) webgen/build.c
	gcc webgen/webgen.c -o wgen -Icommon -Isrc
