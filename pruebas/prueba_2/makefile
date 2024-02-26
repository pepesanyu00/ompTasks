CFLAGS = -O2 -Wall -std=c++11 
LFLAGS = -lm -fopenmp

all: tasks prueba prueba2

tasks: main.cpp lib/transaction.c lib/stask.cpp
	g++ $(CFLAGS) main.cpp lib/transaction.c lib/stask.cpp -o tasks $(LFLAGS)

prueba: prueba.cpp lib/transaction.c
	g++ $(CFLAGS) prueba.cpp lib/transaction.c -o prueba $(LFLAGS)

prueba2: prueba2.cpp lib/transaction.c
	g++ $(CFLAGS) prueba2.cpp lib/transaction.c -o prueba2 $(LFLAGS)

clean:
	rm -f tasks prueba prueba2