#ifndef _GENERATOR_H_
#define _GENERATOR_H_

#define _INSTRUCTION 0
#define _LABEL 1

#define GENERATE(x) generate(context, node->child[x])
#define APPEND(x) append(context, x, _INSTRUCTION)
#define LABEL(x) append(context, x, _LABEL)
#define STRING(x) 
#define VALUE() getValue(context)

#include "../Tree/tree.h"
#include "context.h"
#include <stdio.h>

extern "C" void compile(FILE *fp, GrammarTree *root);
void generate(Context *context, GrammarTree *node);
int isType(GrammarTree *node, int type);
extern char argReg[6][100];

#endif