// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas3.c
// Deskripsi    : Fungsi Masking Byte

#include <stdio.h>

int bitMask(int highbit, int lowbit) {
    int result = 0;

    if (highbit >= lowbit) {
        int nomorBit = highbit - lowbit + 1;
        result = ((1 << nomorBit) - 1) << lowbit;
    }
    return result;
}

int main() {
    int highbit, lowbit, hasilMask;  
    printf("highbit = "); scanf("%d", &highbit);
    printf("lowbit = "); scanf("%d", &lowbit);

    hasilMask = bitMask(highbit, lowbit);
    if(hasilMask == 0){
        printf("result = 0x0000");
    }
    else{
        printf("result = 0x%.4x", hasilMask);
    }
    return(0);
}
