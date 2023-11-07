// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (  )
// Nama File    : tugas13.c
// Deskripsi    : Penjumlahan dan Pengurangan Biner

#include <stdio.h>

// Fungsi untuk mengonversi desimal menjadi biner dan menyimpannya dalam array
void konversiDesimalToBiner(int desimal, int arrayBiner[8]) {
    for (int i = 7; i >= 0; i--) {
        arrayBiner[i] = desimal % 2;
        desimal /= 2;
    }
}

// Fungsi untuk mengonversi biner menjadi desimal
int konversiBinerToDesimal(int arrayBiner[8]) {
    int desimal = 0;
    int base = 1;
    for (int i = 7; i >= 0; i--) {
        desimal += arrayBiner[i] * base;
        base *= 2;
    }
    return desimal;
}

// Fungsi untuk menjalankan operasi penjumlahan dua bilangan biner dalam array
void penjumlahanBiner(int biner1[8], int biner2[8], int result[8]) {
    int carry = 0;
    for (int i = 7; i >= 0; i--) {
        int sum = biner1[i] + biner2[i] + carry;
        result[i] = sum % 2;
        carry = sum / 2;
    }
}

// Fungsi untuk menjalankan operasi pengurangan dua bilangan biner dalam array
void penguranganBiner(int biner1[8], int biner2[8], int result[8]) {
    int borrow = 0;
    for (int i = 7; i >= 0; i--) {
        int diff = biner1[i] - biner2[i] - borrow;
        if (diff < 0) {
            diff += 2;
            borrow = 1;
        } else {
            borrow = 0;
        }
        result[i] = diff;
    }
}

int main() {
    int int1, int2, operasi, hasil;
    int binerInt1[8], binerInt2[8], result[8];

	// Input 2 bilangan integer
    printf("Masukkan angka pertama: ");
    scanf("%d", &int1);
    printf("Masukkan angka kedua: ");
    scanf("%d", &int2);

    // Mengkonversi bilangan berbentuk desimal menjadi biner
    konversiDesimalToBiner(int1, binerInt1);
    konversiDesimalToBiner(int2, binerInt2);

	// Operasi Penjumlahan atau Pengurangan
	printf("Jenis operasi:\n");
	printf("1.Penjumlahan\n2.Pengurangan\n");
    printf("Operasi yang ingin dilakukan: ");
	scanf("%d", &operasi);
	
	int i = 0;
	// Operasi penjumlahan
    if(operasi == 1){
		penjumlahanBiner(binerInt1, binerInt2, result);
		
		// Hasil operasi dalam desimal
		hasil = konversiBinerToDesimal(result);
		printf("Hasil operasi penjumlahan: %d", hasil);
	}
	else{
		penguranganBiner(binerInt1, binerInt2, result);
		
		// Hasil operasi dalam desimal
		hasil = konversiBinerToDesimal(result);
        if(int1 < int2){
            hasil = hasil - 256;
            printf("Hasil operasi pengurangan: %d", hasil);    
        }
        else{
            printf("Hasil operasi pengurangan: %d", hasil);
        }
	}
	
    return 0;
}
