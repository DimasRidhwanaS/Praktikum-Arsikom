// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 1
// Percobaan    : 4
// Tanggal      : 22 September 2014
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Dimas Ridhwana Shalsareza (13221076)
// Nama (NIM) 2 : Fauzan Ibrahim (13221030)
// Nama File    : code_Os.c
// Deskripsi    : Demonstrasi optimisasi defualt proses kompilasi C
// Menjumlahkan deret bilangan sebanyak N_LOOP

#define N_LOOP 500
int main(void)
{
    int indeks;
    int accumulator;
    indeks = 0;
    accumulator = 0;

    while(indeks<N_LOOP){
        accumulator = accumulator + indeks;
        indeks = indeks + 1;
    } return accumulator;
}

