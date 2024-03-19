CFLAGS = -O2 -Wall -std=c++11 
LFLAGS = -lm -fopenmp

all: tasks no_transact

tasks: main.cpp lib/transaction.c lib/stask.cpp
	g++ $(CFLAGS) main.cpp lib/transaction.c lib/stask.cpp -o tasks $(LFLAGS)

no_transact: sin_transaccion.cpp lib/transaction.c lib/stask.cpp
	g++ $(CFLAGS) sin_transaccion.cpp lib/transaction.c lib/stask.cpp -o tasks $(LFLAGS)
clean:
	rm -f tasks no_transact
	rm -rf stats/*
