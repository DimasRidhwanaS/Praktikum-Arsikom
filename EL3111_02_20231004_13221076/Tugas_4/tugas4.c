// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas4.c
// Deskripsi    : Demonstrasi Pointer

#include <stdio.h>

unsigned int reverseByteOrder(unsigned int data) {
    unsigned int byte0 = (data & 0xFF);           // Byte 0 (LSB)
    unsigned int byte1 = ((data >> 8) & 0xFF);    // Byte 1
    unsigned int byte2 = ((data >> 16) & 0xFF);   // Byte 2
    unsigned int byte3 = ((data >> 24) & 0xFF);   // Byte 3 (MSB)

    unsigned int swappedData = (byte0 << 24) | (byte1 << 24) >> 8 | (byte2 << 24) >> 16 | (byte3 << 24) >> 24;

    return swappedData;
}

int main() {
    unsigned int originalData = 0x12345678;  

    printf("Original Data: 0x%X\n", originalData);

    unsigned int reversedData = reverseByteOrder(originalData);

    printf("Reversed Data: 0x%X\n", reversedData);

    return 0;
}