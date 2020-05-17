CFLAGS= -Wall -Wextra -pedantic -g -O2 -fopenmp -std=c++14
CFLAGS += -DNDEBUG

SRC := src
BUILT := built
DOC := doc

$(BUILT)/ws2812-rpi.o: $(SRC)/ws2812-rpi.cpp $(SRC)/ws2812-rpi.h
	g++ $(SRC)/ws2812-rpi.cpp -c -o $(BUILT)/ws2812-rpi.o -lrt

$(BUILT)/ws2812-rpi-test.o: $(SRC)/ws2812-rpi-test.cpp
	g++ $(SRC)/ws2812-rpi-test.cpp -c -o $(BUILT)/ws2812-rpi-test.o

ws2812-rpi-test: $(BUILT)/ws2812-rpi.o $(BUILT)/ws2812-rpi-test.o
	g++ $(BUILT)/ws2812-rpi-test.o $(BUILT)/ws2812-rpi.o -o ws2812-rpi-test

all: ws2812-rpi-test

clean:
	rm -f ws2812-rpi.o
	rm -f ws2812-rpi-test
