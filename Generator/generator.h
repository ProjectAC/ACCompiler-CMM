#ifndef _GENERATOR_H_
#define _GENERATOR_H_

#define GENERATE(x) generate(context, node->child[x])
#define APPEND(x) append(context, x, INSTRUCTION)
#define LABEL(x) append(context, x, LABEL)

#include "../Tree/tree.h"
#include <stdio.h>

void compile(FILE *fp, GrammarTree *root);

#endif