// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas1.c
// Deskripsi    : Demonstrasi Pointer

#include <stdlib.h>
#include <stdio.h>
typedef unsigned char *byte_pointer;

int bitXor(int x, int y) {
    int not_x = ~x;
    int not_y = ~y;
    int and1 = (x & not_y);
    int and2 = (not_x & y);
    int result = ~(and1 & and2);
    return result;
}

int main() {
    int A, B, result;
    int bitXor (int x, int y);
    printf("Masukkan nilai A : ");
    scanf("%d", &A);
    printf("Masukkan nilai B : ");
    scanf("%d", &B);
    
    result = bitXor(A, B);
    printf("Hasil : %d\n", result);

    return 0;
}
