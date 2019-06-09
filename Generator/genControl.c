#include "generator.h"
#include "context.h"

static char instr[1000];

void genFunctionDefinition(Context *context, GrammarTree *node)
{
    // declaration_specifiers declarator compound_statement
    if (node->num == 3)
    {
        GENERATE(1);
        GENERATE(2);
    }
}