#include <stdio.h>

extern int plus(int a, int b);
extern int mul(int a, int b);
extern int tmp(int a, int b);
extern int test(int a, int b, int c, int d, int e, int f);
extern int fact(int x);
extern int fib(int x);

int main()
{
    int a = 5, b = 7;
    printf("%d\n", plus(a, b));
    printf("%d\n", mul(a, b));
    printf("%d\n", tmp(a, b));
    printf("%d\n", test(a, b, 3, 4, 5, 6));
    printf("%d\n", fact(11));
    printf("%d\n", fib(10));

    return 0;
}