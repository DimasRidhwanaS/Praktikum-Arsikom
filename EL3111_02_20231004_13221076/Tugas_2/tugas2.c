// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas2.c
// Deskripsi    : Ekstraksi Ekstraksi Byte

#include <stdio.h>
#include <stdlib.h>

int getByte(int x, int n){
	int banyakShift = n * 8;
	int hasil = (x >> (banyakShift)) & 0xFF;
	return hasil;
}

int main(){
	int x, n, result;
	printf("x = "); scanf("%x", &x);
	printf("n = "); scanf("%d", &n);
	
	result = getByte(x,n);
	printf("result = 0x%x", result);
	
	return(0);
}