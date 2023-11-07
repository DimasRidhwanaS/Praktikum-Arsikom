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
    // Input karakter dari pengguna
	char inputKarakter[200];							// Didefinisikan maksimal ada 200 input karakter
    printf("Masukkan input karakter satu per satu: ");	// Akhiri dengan Enter jika sudah selesai memberi input

    // Membaca karakter-karakter dari pengguna satu per satu
	int i = 0;
    while (1) {
        char readChar = getchar();
        if (readChar == '\n' || i >= 200) {
            break;
        }
        inputKarakter[i++] = readChar;
    }

    // Menampilkan karakter dalam urutan terbalik
    printf("Karakter dalam urutan terbalik: ");
    for (int j = i - 1; j >= 0; j--) {
        printf("%c", inputKarakter[j]);
    }
    printf("\n");

    return 0;
}
