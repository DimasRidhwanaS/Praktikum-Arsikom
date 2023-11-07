// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas6.c
// Deskripsi    : Fungsi Shift Register

#include <stdio.h>
#include <stdlib.h>

unsigned int global_var;

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

int inisialisasi(unsigned int *x){
    return *x = 0x00000000;
}

int shift_register(unsigned int a){
    global_var = global_var << 5;
    global_var = global_var | a;
}

int main(){
    inisialisasi(&global_var);
    
    int a;
    a = shift_register(0x04);
    printf("0x%.2x\n", a);
    printBit(1, &a);
    a = shift_register(0x13);
    printf("0x%.2x\n", a);
    printBit(1, &a);
    
}


