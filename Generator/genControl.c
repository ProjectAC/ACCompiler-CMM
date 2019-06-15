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
    else  // error
    {
    }
}

void genCompoundStatement(Context *context, GrammarTree *node)
{
    // '{' '}'
    if (node->num == 2)
    {
    }
    else if (node->num == 3)
    {
	    // '{' statement_list '}'
	    // '{' declaration_list '}'
    }
	// '{' declaration_list statement_list '}'
    else if (node->num == 4)
    {
        GENERATE(1);
        GENERATE(2);
    }
}

void genDeclarationList()
{
    // declaration
	// declaration_list declaration
}

void genDeclarator(Context *context, GrammarTree *node)
{
	// direct_declarator
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // pointer direct_declarator
    else  // error
    {
    }
}

void genDirectDeclarator(Context *context, GrammarTree *node)
{
    // IDENTIFIER
    if (node->num == 1)
    {
        GENERATE(0);
    }
    else if (node->num == 3)
    {
        // '(' declarator ')'
        // direct_declarator '[' ']'
        // direct_declarator '(' ')'
        if (isType(node->child[1], '('))
        {
            GENERATE(0);
        }
        else
        {
        }
    }
    else if (node->num == 4)
    {
        // direct_declarator '[' constant_expression ']'
        // direct_declarator '(' parameter_type_list ')'
        // direct_declarator '(' identifier_list ')'
    }
    else // error
    {
    }
}
