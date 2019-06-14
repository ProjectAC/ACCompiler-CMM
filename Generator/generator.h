#ifndef _GENERATOR_H_
#define _GENERATOR_H_

#define _INSTRUCTION 0
#define _LABEL 1

#define GENERATE(x) generate(context, node->child[x])
#define APPEND(x) append(context, x, _INSTRUCTION)
#define LABEL(x) append(context, x, _LABEL)

#include "../Tree/tree.h"
#include "context.h"
#include <stdio.h>

void compile(FILE *fp, GrammarTree *root);
void generate(Context *context, GrammarTree *node);
void append(Context * context, char *str, int rowType);
int isType(GrammarTree *node, NodeType type);

#endif