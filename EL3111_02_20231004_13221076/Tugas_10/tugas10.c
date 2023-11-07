// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas10.c
// Deskripsi    : Matriks Nama

// output yang diinginkan 
// {{d,i,m,a,s},{d,a,m,i,s}, {k,o,k,o}}
// Asumsi 
// jumlah array dari input pengguna
// jumlah karakter dalam array of array diminta sebelum memasukkan karakter

#include <stdio.h>

int main(){
    int jumlah_orang, panjang_nama_max;
    printf("Masukkan jumlah orang       : \n");
    scanf("%d", &jumlah_orang);
    printf("Masukkan panjang nama maks  : \n");
    scanf("%d", &panjang_nama_max);

    char nama_orang[jumlah_orang][panjang_nama_max];

    for (int i=0; i<jumlah_orang; i++){
        // Baca baris per baris
        for (int j=0; j<panjang_nama_max; j++){
            scanf("%s", &nama_orang[i][j]);
        }
        printf("Ganti orang!\n");
    }

    //Print semua nama orang secara berurutan
    printf(" {");
    for (int i=0; i<jumlah_orang; i++){
        printf("{");
        for (int j=0; j<panjang_nama_max; j++){
            printf("%c ", nama_orang[i][j]);
        }
        printf("}");
    }
    printf("}");

    return 0;
}