// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas5.c
// Deskripsi    : Fungsi Pengurangan Byte

#include <stdio.h>

int minBytes(int x, int y) {
    int result, invY;
	
	// Lakukan operasi invers pada byte data kedua
	invY = (~y);
	
	// Tambahkan dengan byte data pertama dengan invers byte data kedua + 1
    result = x + (invY + 1);

    return result;
}

int main() {
    int x, y, result;
	
	// Input data byte pertama dan kedua
	printf("Byte data pertama: "); scanf("%x", &x);
	printf("Byte data kedua: "); scanf("%x", &y);
	
	// Fungsi minBytes(x,y)
    result = minBytes(x, y);
    printf("Hasil pengurangan byte: 0x%02x\n", result);
	
    return 0;
}
