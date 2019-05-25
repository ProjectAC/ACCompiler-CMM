#include <stdlib.h>
#include <string.h>
#include "essentials.h"

char *newString(const char * const s)
{
    char *ret = (char *)malloc(sizeof(char) * (strlen(s) + 1));
    strcpy(ret, s);
    return ret;
}

long long *newInt(long long i)
{
    long long *ret = (long long *)malloc(sizeof(long long));
    *ret = i;
    return ret;
}

double *newFloat(double d)
{
    double *ret = (double *)malloc(sizeof(double));
    *ret = d;
    return ret;
}