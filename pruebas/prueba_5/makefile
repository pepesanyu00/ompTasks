CFLAGS = -O2 -Wall -std=c++11 -march=native
LFLAGS = -lm -fopenmp -mrtm

all: tasks 

tasks: main.cpp lib/rtmIntel.c lib/stask.cpp
	g++ $(CFLAGS) main.cpp lib/rtmIntel.c lib/stask.cpp -o tasks $(LFLAGS)


clean:
	rm -f tasks 
	rm -rf stats/*

#tasks: main.s rtmIntel.s stask.s
#	g++ $(CFLAGS) main.s rtmIntel.s stask.s -o tasks $(LFLAGS)
#
#main.s: main.cpp
#	g++ -S $(CFLAGS) main.cpp -o main.s $(LFLAGS)
#
#rtmIntel.s: lib/rtmIntel.c
#	g++ -S $(CFLAGS) lib/rtmIntel.c -o rtmIntel.s $(LFLAGS)
#
#stask.s: lib/stask.cpp
#	g++ -S $(CFLAGS) lib/stask.cpp -o stask.s $(LFLAGS)
#
#clean:
#	rm -f tasks main.s rtmIntel.s stask.s
#	rm -rf stats/*