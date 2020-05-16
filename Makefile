ws2812-rpi.o: ws2812-rpi.cpp ws2812-rpi.h
	g++ ws2812-rpi.cpp -c -o ws2812-rpi.o -lrt

ws2812-rpi-test: ws2812-rpi.o ws2812-rpi-test.cpp
	g++ ws2812-rpi-test.cpp ws2812-rpi.o -o ws2812-rpi-test

all: ws2812-rpi.o ws2812-rpi-test

clean:
	rm -f ws2812-rpi.o
	rm -f ws2812-rpi-test
