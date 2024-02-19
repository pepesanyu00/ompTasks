CFLAGS = -O2 -Wall -std=c++11 
LFLAGS = -lm -fopenmp

all: tasks

tasks: main.cpp transaction.c Stask.cpp
	g++ $(CFLAGS) main.cpp transaction.c Stask.cpp -o tasks $(LFLAGS)

