#include <stdio.h>
#include "../Tree/tree.h"

static GrammarTree * (*generator[3000])(GrammarTree *root);

void generate(GrammarTree *root)
{
    (*generator[root->type])(root);
}