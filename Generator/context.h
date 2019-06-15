#ifndef _CONTEXT_H_
#define _CONTEXT_H_

#include <stdio.h>

typedef struct __ValueType
{
    int basicType;
    unsigned int arrayLength;
    int isPointer;
    struct __ValueType *next;
} ValueType;

typedef struct __IdentifierInfo
{
    char *name;
    int isLabel;
    unsigned int address;
    ValueType *type;
} IdentifierInfo;

typedef struct __Context
{
    FILE *file;
    ValueType *typeRegs[100];
    ValueType *baseType;
    IdentifierInfo currentIdentifier;
    NodeType operation;
    int sp;
} Context;

void setBaseType(Context *ctx, int baseType);
void appendType(ValueType *valueType, int baseType, unsigned int arrayLength, int isPointer);
void setIdentifier(Context *ctx, char *name, int isLabel, ValueType *valueType);

#endif