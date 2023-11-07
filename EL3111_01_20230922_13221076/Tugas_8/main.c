// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul        : 1
// Percobaan    : 1
// Tanggal      : 22 September 2014
// Kelompok     : 2
// Rombongan    : D
// Nama (NIM) 1 : Fauzan Ibrahim (13221030)
// Nama (NIM) 2 : Dimas Ridhwana Shalsareza (13221076)
// Nama File    : main.c
// Deskripsi    : Demonstrasi procedure call dan stack
// Menghitung jumlah dari kuadrat bilangan
int square (int x)
{
    return x*x;
}

int squaresum (int y, int z)
{
    int temp1 = square(y);
    int temp2 = square(z);
    return temp1+temp2;
}

int main (void)
{
    int a = 5;
    int b = 9;
    return squaresum(a,b);
}
