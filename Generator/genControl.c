#include "generator.h"
#include "context.h"

static char instr[1000];

void initGenOperators(void (*generator[3000])(Context *context, GrammarTree *node))
{
    generator[DECLARATION_LIST] = genDeclarationList;
    generator[DECLARATION_SPECIFIERS] = genDeclarationSpecifiers;
    generator[INIT_DECLARATOR_LIST] =genInitDeclaratorList;
    generator[INIT_DECLARATOR] = genInitDeclarator;
    generator[DECLARATOR] = genDeclarator;
    generator[DIRECT_DECLARATOR]=genDirectDeclarator;
}

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

void genDeclarationList(Context *context, GrammarTree *node)
{
    // declaration
    if (node->num == 1)
    {
        GENERATE(0);
    }
	// declaration_list declaration
    else if (node->num == 2)
    {
        GENERATE(0);
        GENERATE(1);
    }
}

void genDeclaration(Context *context, GrammarTree *node)
{
    // declaration_specifiers ';'
    if (node->num == 2)
    {
        GENERATE(0);
    }
	// declaration_specifiers init_declarator_list ';'
    else if (node->num == 3)
    {
        GENERATE(0);
        GENERATE(1);
    }
    else  // error
    {
    }
}

void genDeclarationSpecifiers(Context *context, GrammarTree *node)
{
    if (node->num == 1)
    {
        // storage_class_specifier
        // type_specifier
        // type_qualifier
        if (isType(node->child[0], TYPE_SPECIFIER))
        {
            GENERATE(0);
        }
    }
    else if (node->num == 2)
    {
        // storage_class_specifier declaration_specifiers
        // type_specifier declaration_specifiers
        // type_qualifier declaration_specifiers
    }
    else  // error
    {
    }
}

void genTypeSpecifier(Context *context)
{
    setBaseType(context, L_INT);
}

void genInitDeclaratorList(Context *context, GrammarTree *node)
{
    // init_declarator
    if (node->num == 1)
    {
        GENERATE(0);
    }
	// init_declarator_list ',' init_declarator
    else if (node->num == 3)
    {
        GENERATE(0);
        GENERATE(1);
    }
}

void genInitDeclarator(Context *context, GrammarTree *node)
{
    // declarator
    if (node->num == 1)
    {
        GENERATE(0);
    }
	// declarator '=' initializer
    else if (node->num == 3)
    {
        GENERATE(2);
        GENERATE(0);
        sprintf(instr, "movl %%eax, %s", context->currentIdentifier->address);
        APPEND(instr);
    }
    else  // error
    {
    }
}

void genDeclarator(Context *context, GrammarTree *node)
{
    // direct_declarator
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // pointer direct_declarator
    else if(node->num == 2)
    {
        GENERATE(1);
    }
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
    }
    else if (node->num == 4)
    {
        // direct_declarator '(' parameter_type_list ')'
        // direct_declarator '(' identifier_list ')'
        // direct_declarator '[' constant_expression ']'
    }
    else  // error
    {
    }
}
