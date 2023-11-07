all: main.exe

main.exe : tugas7.o enkripsi.o dekripsi.o
	gcc tugas7.o enkripsi.o dekripsi.o -o main.exe
	
tugas7.o: tugas7.c
	gcc -c tugas7.c
	
enkripsi.o: enkripsi.c
	gcc -c enkripsi.c

dekripsi.o: dekripsi.c
	gcc -c dekripsi.c