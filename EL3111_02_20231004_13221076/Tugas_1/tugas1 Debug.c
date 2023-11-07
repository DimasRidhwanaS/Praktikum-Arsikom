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

void printByte(byte_pointer address, int size){
    int i;
    for (i = size-1; i >= 0; i--){
        printf(" %.2x", address[i]);
    }
    printf("\n");
}

void printBit(size_t const size, void const * const address){
    unsigned char *b = (unsigned char*) address;
    unsigned char byte;
    int i, j;
    int space;
    space=0;
    printf(" ");
    
    for (i=size-1;i>=0;i--){
        for (j=7;j>=0;j--){
            byte = b[i] & (1<<j);
            byte >>= j;
            printf("%u", byte);
            space++;
            if (space>=4) {
                printf(" ");
                space=0;
            }
        }
    }
    puts("");
}

int main() {
    int A, B;
    int bitXor (int x, int y);
    printf("Masukkan nilai A : ");
    scanf("%d", &A);
    printf("Masukkan nilai B : ");
    scanf("%d", &B);
    
    // result = bitXor(A, B);
    // printf("Hasil : %d\n", result);

    int not_A = ~A;
    int not_B = ~B;
    int and1 = (A & not_B);
    int and2 = (not_A & B);
    int result = (and1 | and2);
   

    printf("nilai A = %d\n", A);
    printf("bit A           :");
    printBit(1, &A);
    printf("bit not_A       :");
    printBit(1 , &not_A);
    printf("\n");

    printf("nilai B = %d\n", B);
    printf("bit B           :");
    printBit(1 , &B);
    printf("bit not_B       :");
    printBit(1 , &not_B);
    printf("\n");

    // printf("nilai not_A = %d\n", not_A);
    // printf("nilai not_B = %d\n", not_B);
    

    printf("nilai and1  = %d\n", and1);
    printf("bit and1       :");
    printBit(1 , &and1);
    printf("\n");
    
    printf("nilai and2  = %d\n", and2);
    printf("bit and2       :");
    printBit(1 , &and2);
    printf("\n");

    printf("Hasil : %d\n", result);
    printf("bit result       :");
    printBit(1, &and2);
    printf("\n");
    

    return 0;
}
