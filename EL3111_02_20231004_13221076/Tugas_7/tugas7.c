// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas7.c
// Deskripsi    : Program Enkripsi Sederhana

#include <stdio.h>
#include "enkripsi.h"
#include "dekripsi.h"

extern unsigned int enkripsi(unsigned int teksPlain, unsigned int key);
extern unsigned int dekripsi(unsigned int teksCipher, unsigned int key);
int main(){
    unsigned int input, enkrip, dekrip, key;
	
	// Input 9 digit angka yang ingin dekripsi
    printf("Masukkan input 9 digit bilangan desimal : ");
    scanf("%u", &input);
	
	// Input key
    printf("Masukkan input key: ");
    scanf("%u", &key);
	
	// Proses enkripsi dan dekripsi
	if(key < 256){	// Key 8 bit memiliki maksimal desimal 255
		// Hasil enkripsi
		enkrip = enkripsi(input, key);
		printf("Output proses enkripsi: %u\n", enkrip);
		
		// Hasil dekripsi
		dekrip = dekripsi(enkrip, key);
		printf("Output proses dekripsi kembali: %u\n", dekrip);
	}
	else{
		printf("Key yang dimasukkan tidak memenuhi syarat 8 bit"); 
	}
	
    return 0;
}
