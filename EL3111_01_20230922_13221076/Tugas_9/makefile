all: fibo_main.exe

fibo_main.exe: fibo_main.o fibo.o inputn.o
	gcc fibo_main.o fibo.o inputn.o -o fibo_main.exe

fibo_main.o: fibo_main.c
	gcc -c fibo_main.c

fibo.o: fibo.c
	gcc -c fibo.c

inputn.o: inputn.c
	gcc -c inputn.c