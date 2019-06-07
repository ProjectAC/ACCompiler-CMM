#ifndef _CONTEXT_H_
#define _CONTEXT_H_

#include <stdio.h>

typedef struct __Context
{
    FILE *file;
    NodeType operation;
} Context;

#endif