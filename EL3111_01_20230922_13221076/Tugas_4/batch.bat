%~d0
cd "%~dp0"
gcc -m32 -O0 -c code_O0.c
gcc -m32 -O1 -c code_O1.c
gcc -m32 -O2 -c code_O2.c
gcc -m32 -O3 -c code_O3.c
gcc -m32 -Os -c code_Os.c
gcc -m32 -Ofast -c code_Ofast.c
objdump -d code_O0.o > code_O0.s
objdump -d code_O1.o > code_O1.s
objdump -d code_O2.o > code_O2.s
objdump -d code_O3.o > code_O3.s
objdump -d code_Os.o > code_Os.s
objdump -d code_Ofast.o > code_Ofast.s
pause