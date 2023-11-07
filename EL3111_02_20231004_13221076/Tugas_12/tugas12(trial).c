// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas10.c
// Deskripsi    : Perkalian Matriks



/*
    Constrain : 
    - Baris matrix B <= Baris matrix A
    - Kolom Matrix B tak terhingga
    - Baris Kolom A tidak terbatas

    Cara perkalian
    - C11 = A11*B11 + A12*B21 + A13*B31
    - C21 = A21*B11 + A22*B21 + A23*B31
    - C12 = A11*B12 + A12*B22 + A13*B32

*/

#include <stdio.h>
#include <stdlib.h>


int baris_A, kolom_A;
int baris_B, kolom_B;

int mulMatriks(int* m1[baris_A][kolom_A], int* m2[baris_B][kolom_B]){
    
}

int main(){
    printf("Baris A : \n");
    scanf("%d", &baris_A);
    printf("Kolom A : \n");
    scanf("%d", &kolom_A);
    
    printf("Baris B : ");
    scanf("%d", &baris_B);
    while (baris_B > kolom_A){
        printf("baris B melebihi kolom A, masukkan kembali baris B : \n");
        scanf("%d", &baris_B);
    }
    printf("Kolom B : ");
    scanf("%d", &kolom_B);

    int matrix_A[baris_A][kolom_A];
    int matrix_B[baris_B][kolom_B];

    printf("Input matrix A \n");
    for (int i=0; i<baris_A; i++){
        for (int j=0; j<kolom_A; j++){
            printf("A%d%d", i+1,j+1);
            scanf("%d", &matrix_A[i][j]);
        }
    }

    printf("Input matrix B \n");
    for (int i=0; i<baris_B; i++){
        for (int j=0; j<kolom_B; j++){
            printf("A%d%d", i+1,j+1);
            scanf("%d", &matrix_B[i][j]);
        }
    }

    mulMatriks(matrix_A[baris_A][kolom_A], matrix_B[baris_B][kolom_B]);
    
}