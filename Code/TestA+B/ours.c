int plus(int a, int b)
{
    return a + b;
}

int mul(int a, int b)
{
    return a * b;
}

int tmp(int a, int b)
{
    return a < b;
}

int test(int a, int b, int c, int d, int e, int f)
{
    return (b < a) ? c - d : e * f;
}

int fact(int x)
{
    return x ? x * fact(x - 1) : 1;
}

int fib(int x)
{
    return x < 2 ? x : fib(x - 1) + fib(x - 2);
}