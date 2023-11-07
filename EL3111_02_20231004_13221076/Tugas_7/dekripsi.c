// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : deskripsi.c
// Deskripsi    : Program Enkripsi Sederhana

#include <stdio.h>
#include "dekripsi.h"

unsigned int dekripsi(unsigned int teksCipher, unsigned int key){
	unsigned int teksPlain = teksCipher ^ (key << 24 | key << 16 | key << 8 | key);
	return teksPlain;
}