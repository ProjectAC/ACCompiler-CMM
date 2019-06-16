#include "context.h"
#include "generator.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

using namespace std;

static char instr[1000];

Context *buildContext(FILE *fp)
{
    Context *context = new Context();
    context->file = fp;
    return context;
}

void append(Context *context, string str, int rowType)
{
    if (rowType == _LABEL)
    {
        context->instructions.push_back(string(str) + ":");
    }
    else if (rowType == _INSTRUCTION)
    {
        context->instructions.push_back("    " + str);
    }
}

void setBaseType(Context *ctx, int baseType)
{
    ctx->baseType = ValueType({baseType, 0, 0});
}

void appendType(vector<ValueType> &valueType, int baseType, unsigned int arrayLength, int isPointer)
{
    valueType.push_back({baseType, arrayLength, isPointer});
}

void appendType(std::vector<ValueType> &valueType, ValueType type)
{
    valueType.push_back(type);
}

void setIdentifier(Context *ctx, std::string name, int isLabel, std::vector<ValueType> valueType)
{
    ctx->symbolList[name] = IdentifierInfo({name, isLabel});
}

void unsetIdentifier(Context *ctx, std::string name)
{
    ctx->symbolList.erase(name);
}

void getIdentifier(Context *ctx, std::string name)
{
    ctx->currentIdentifier = &ctx->symbolList[name];
}

void getValue(Context *context)
{
    IdentifierInfo *p = context->currentIdentifier;
    if (p)
    {
        if (!(p->isLabel))
        {
            sprintf(instr, "mov %d(%%rbp), %%eax", p->address);
            APPEND(instr);
        }
        context->currentIdentifier = NULL;
    }
}