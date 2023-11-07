// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 2
// Percobaan    : 0
// Tanggal      : 5 October 2023
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13211076)
// Nama (NIM) 2 : M. Zhafran Arrafi Anwar (13211079)
// Nama File    : tugas8.c
// Deskripsi    : Pointer dalam Assembly

void coba(int* x, int* y, int* z){
    // Kamus
    int a;
    int b;
    int c;
    int d;
    // Algoritma
    a = *x;
    b = *y;
    c = *z;
    d = a+b;
    *y = d;
    *z = b;
    *x = c;
}
