// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 1
// Percobaan    : 1
// Tanggal      : 22 September 2014
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13221076)
// Nama (NIM) 2 : Fauzan Ibrahim (13221030)
// Nama File    : fibo.c
// Deskripsi    : Menghitung deret fibonacci

//#include "inputn.h"
#include <stdio.h>

int t1 = 1, t2 = 1, result = 0;

int fibo(int term) {
    printf("%d %d ", t1, t2);
    for (int i = 2; i < term; i++) {
        result = t1 + t2;
        t1 = t2; t2 = result;
        printf("%d ", result);
    }
}