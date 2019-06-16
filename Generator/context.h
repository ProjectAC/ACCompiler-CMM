#ifndef _CONTEXT_H_
#define _CONTEXT_H_

#include <stdio.h>
#include <map>
#include <vector>
#include <string>

struct __ValueType
{
    int baseType;
    unsigned int arrayLength;
    int isPointer;
};
typedef struct __ValueType ValueType;

struct __IdentifierInfo
{
    std::string name;
    int isLabel;
    int address;
    std::vector<ValueType> type;
};
typedef struct __IdentifierInfo IdentifierInfo;

struct __Context
{
    FILE *file;
    std::vector<ValueType> typeRegs[100];
    ValueType baseType;
    IdentifierInfo *currentIdentifier;
    std::map<std::string, IdentifierInfo> symbolList;
    int operation;
    int mode;
    int sp;
    int argCnt;
    int argCntCaller;
    std::string functionName;

    std::vector<std::string> functions;
    std::vector<std::string> instructions;
};
typedef struct __Context Context;

Context *buildContext(FILE *fp);
void setBaseType(Context *ctx, int baseType);
void appendType(std::vector<ValueType> &valueType, int baseType, unsigned int arrayLength, int isPointer);
void appendType(std::vector<ValueType> &valueType, ValueType type);
void setIdentifier(Context *ctx, std::string name, int isLabel, std::vector<ValueType> valueType);
void unsetIdentifier(Context *ctx, std::string name);
void getIdentifier(Context *ctx, std::string name);
void getValue(Context *ctx);
void append(Context *context, std::string str, int rowType);

#endif