// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas12.c
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

void mulMatriks(int** m1, int** m2, int** hasil) {
    for (int i = 0; i < baris_A; i++) {
        for (int j = 0; j < kolom_B; j++) {
            hasil[i][j] = 0; 
            for (int k = 0; k < kolom_A; k++) {
                hasil[i][j] += m1[i][k] * m2[k][j];
            }
        }
    }
}

int main() {
    printf("Baris A: ");
    scanf("%d", &baris_A);
    printf("Kolom A: ");
    scanf("%d", &kolom_A);

    printf("Baris B: ");
    scanf("%d", &baris_B);
    while (baris_B != kolom_A) {
        printf("Jumlah baris B harus sama dengan Kolom A, masukkan kembali : ");
        scanf("%d", &baris_B);
    }
    
    printf("Kolom B: ");
    scanf("%d", &kolom_B);
    
    int** matrix_A = (int**)malloc(baris_A * sizeof(int*));
    int** matrix_B = (int**)malloc(baris_B * sizeof(int*));
    int** hasil = (int**)malloc(baris_A * sizeof(int*));

    for (int i = 0; i < baris_A; i++) {
        matrix_A[i] = (int*)malloc(kolom_A * sizeof(int));
    }

    for (int i = 0; i < baris_B; i++) {
        matrix_B[i] = (int*)malloc(kolom_B * sizeof(int));
    }

    for (int i = 0; i < baris_A; i++) {
        hasil[i] = (int*)malloc(kolom_B * sizeof(int));
    }

    printf("Input matrix A:\n");
    for (int i = 0; i < baris_A; i++) {
        for (int j = 0; j < kolom_A; j++) {
            printf("A%d%d: ", i + 1, j + 1);
            scanf("%d", &matrix_A[i][j]);
        }
    }

    printf("Input matrix B:\n");
    for (int i = 0; i < baris_B; i++) {
        for (int j = 0; j < kolom_B; j++) {
            printf("B%d%d: ", i + 1, j + 1);
            scanf("%d", &matrix_B[i][j]);
        }
    }

    mulMatriks(matrix_A, matrix_B, hasil);

    
    

    // Print matrix_A
    printf("Matrix A :\n");
    for (int i = 0; i < baris_A; i++) {
        printf("|");
        for (int j = 0; j < kolom_A; j++) {
            printf("%d ", matrix_A[i][j]);
        }
        printf("|");
        printf("\n");
    }
    
    // Print matrix hasil
    printf("\nMatrix B :\n");
    for (int i = 0; i < baris_B; i++) {
        printf("|");
        for (int j = 0; j < kolom_B; j++) {
            printf("%d ", matrix_B[i][j]);
        }
        printf("|");
        printf("\n");
    }

    // Print matrix hasil
    printf("\nResult matrix:\n");
    for (int i = 0; i < baris_A; i++) {
        printf("|");
        for (int j = 0; j < kolom_B; j++) {
            printf("%d ", hasil[i][j]);
        }
        printf("|");
        printf("\n");
    }


    for (int i = 0; i < baris_A; i++) {
        free(matrix_A[i]);
    }
    for (int i = 0; i < baris_B; i++) {
        free(matrix_B[i]);
    }
    for (int i = 0; i < baris_A; i++) {
        free(hasil[i]);
    }
    free(matrix_A);
    free(matrix_B);
    free(hasil);

    return 0;
}
