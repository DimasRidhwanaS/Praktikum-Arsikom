// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Deskripsi    : Demonstrasi Pointer

#include <stdlib.h>
#include <stdio.h>
typedef unsigned char *byte_pointer;

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
    int num;
    
    printf("Masukkan bilangan bulat (integer): ");
    scanf("%d", &num);
    
    printf("\nRepresentasi dalam bit:\n");
    printBit(sizeof(num), &num);
    
    printf("Size = %d", sizeof(num));

    printf("\nRepresentasi dalam byte:\n");
    printByte((byte_pointer)&num, sizeof(num));
    
    return 0;
}




/* 
    int -> 4 Byte
    
*/
