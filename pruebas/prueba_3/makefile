CFLAGS = -O2 -Wall -std=c++11 
LFLAGS = -lm -fopenmp

all: tasks prueba

tasks: main.cpp lib/transaction.c lib/stask.cpp
	g++ $(CFLAGS) main.cpp lib/transaction.c lib/stask.cpp -o tasks $(LFLAGS)

prueba: prueba.cpp lib/transaction.c
	g++ $(CFLAGS) prueba.cpp lib/transaction.c -o prueba $(LFLAGS)

clean:
	rm -f tasks