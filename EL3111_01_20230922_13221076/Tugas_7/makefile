all: main.exe

main.exe: main.o add.o
	gcc main.o add.o -o main.exe

main.o: main.c
	gcc -c main.c

add.o: add.c
	gcc -c add.c