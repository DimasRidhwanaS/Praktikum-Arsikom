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
