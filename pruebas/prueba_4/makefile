CFLAGS = -O2 -Wall -std=c++11 -march=native
LFLAGS = -lm -fopenmp -mrtm

all: tasks 

tasks: main.cpp lib/transaction.c lib/stask.cpp
	g++ $(CFLAGS) main.cpp lib/rtmIntel.c lib/stask.cpp -o tasks $(LFLAGS)
clean:
	rm -f tasks 
	rm -rf stats/*
