all: main serial_main

main: main.c
	mpicc -o main -Wall main.c -lm

serial_main: serial_main.c
	gcc -o serial_main -Wall serial_main.c -lm
