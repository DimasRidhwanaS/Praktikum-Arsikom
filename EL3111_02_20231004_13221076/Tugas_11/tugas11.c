// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas9.c
// Deskripsi    : Fungsi Membalik Urutan Array

#include <stdio.h>
#include <stdlib.h>

int main() {
    int jumlah_orang, panjang_nama_max;
    printf("Masukkan jumlah orang: ");
    scanf("%d", &jumlah_orang);
    printf("Masukkan panjang nama maks: ");
    scanf("%d", &panjang_nama_max);

    // Membuat array of pointer to character (string)
    char* nama_orang[jumlah_orang];

    for (int i = 0; i < jumlah_orang; i++) {
        // Membuat array dinamis untuk setiap string
        nama_orang[i] = (char*)malloc(panjang_nama_max * sizeof(char));
        // Input semua nama orang
        printf("Masukkan nama orang ke-%d: ", i + 1);
        scanf("%s", nama_orang[i]);
    }

    // Print semua nama orang secara berurutan
    printf("{");
    for (int i = 0; i < jumlah_orang; i++) {
        printf("{%s} ", nama_orang[i]);
        free(nama_orang[i]);
    }
    printf("}");

    return 0;
}
