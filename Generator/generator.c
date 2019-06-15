#include <stdio.h>
#include "generator.h"
#include "../Tree/treeNodeTypeStrings.h"

static void (*generator[3000])(Context *context, GrammarTree *node);

Context *buildContext(FILE *fp)
{
    Context *context = (Context *)malloc(sizeof(Context));
    context->file = fp;
    return context;
}

void generate(Context *context, GrammarTree *node)
{
    printf("(%d) %s <%d> [%d]\n", node->id, treeNodeTypeStrings[node->type], node->line, node->num);
    (*generator[node->type])(context, node);
}

void compile(FILE *fp, GrammarTree *root)
{
    Context *context = buildContext(fp);
    generate(context, root);
}

int isType(GrammarTree *node, NodeType type)
{
    return node->type == type;
}