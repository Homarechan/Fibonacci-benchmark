#include <stdio.h>

extern int pypy_g_fibonacci(int);

int main() {
    printf("%d\n", pypy_g_fibonacci(40));
    return 0;
}
