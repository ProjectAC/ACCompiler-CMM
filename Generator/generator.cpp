#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "generator.h"
#include "context.h"
#include "../Tree/treeNodeTypeStrings.h"

static void (*generator[3000])(Context *context, GrammarTree *node);

void initGenOperators(void (*generator[3000])(Context *context, GrammarTree *node));
void initGenControl(void (*generator[3000])(Context *context, GrammarTree *node));

void generate(Context *context, GrammarTree *node)
{
    printf("(%d) %s <%d> [%d]\n", node->id, treeNodeTypeStrings[node->type], node->line, node->num);
    (*generator[node->type])(context, node);
}

extern "C" void compile(FILE *fp, GrammarTree *root)
{
    Context *context = buildContext(fp);
    initGenOperators(generator);
    initGenControl(generator);
    generate(context, root);

    for (auto &item: context->instructions)
    {
        fprintf(fp, "%s\n", item.c_str());
    }
}

int isType(GrammarTree *node, int type)
{
    return node->type == type;
}
