#include "generator.h"
#include "context.h"

static char instr[1000];

void genParameterTypeList(Context *context, GrammarTree *node)
{
    // parameter_list
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // parameter_list ',' ELLIPSIS
    else  // error
    {
    }
}

void genParameterList(Context *context, GrammarTree *node)
{
    context->mode = 1;
    // parameter_declaration
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // parameter_list ',' parameter_declaration
    else if (node->num == 3)
    {
        GENERATE(0);
        GENERATE(2);
    }
    else  // error
    {
    }
}

void genParameterDeclaration(Context *context, GrammarTree *node)
{
    // declaration_specifiers
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // declaration_specifiers declarator
    // declaration_specifiers abstract_declarator
    else if (node->num == 2)
    {
        GENERATE(0);
        GENERATE(1);

        context->currentIdentifier->address = (context->sp -= 4);
        sprintf(instr, "movl %s, %d(%%rbp)", argReg[context->argCnt++], context->currentIdentifier->address);
        APPEND(instr);
    }
}

void genParserStart(Context *context, GrammarTree *node)
{
    GENERATE(0);
}

void genTranslationUnit(Context *context, GrammarTree *node)
{
    if (node->num == 1)
    {
        GENERATE(0);
    }
    else if (node->num == 2)
    {
        GENERATE(0);
        GENERATE(1);
    }
}

void genExtermalDeclaration(Context *context, GrammarTree *node)
{
    GENERATE(0);
}

void genFunctionDefinition(Context *context, GrammarTree *node)
{
    // declaration_specifiers declarator declaration_list compound_statement
    GENERATE(0);
    GENERATE(1);
    context->currentIdentifier = NULL;

    GENERATE(2);
    if (node->num == 4)
    {
        GENERATE(3);
    }

    sprintf(instr, "%s_function_ending", context->functionName.c_str());
    LABEL(instr);
	APPEND("leave");
    APPEND("ret");
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
        GENERATE(1);
    }
    // '{' declaration_list statement_list '}'
    else if (node->num == 4)
    {
        context->mode = 2;
        GENERATE(1);
        context->mode = 0;
        GENERATE(2);
    }
}

void genTypeSpecifier(Context *context, GrammarTree *node)
{
    setBaseType(context, L_INT);
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
    // storage_class_specifier
    // type_specifier
    GENERATE(0);
    // type_qualifier
    // storage_class_specifier declaration_specifiers
    // type_specifier declaration_specifiers
    // type_qualifier declaration_specifiers
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
        sprintf(instr, "movl %%eax, %d(%%rbp)", context->currentIdentifier->address);
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
        GENERATE(0);

        context->currentIdentifier->isLabel = 1;
        context->functions.push_back(context->currentIdentifier->name);
        context->functionName = context->currentIdentifier->name;
        context->sp = 0;
        context->argCnt = 0;
        
        sprintf(instr, ".globl %s", context->currentIdentifier->name.c_str());
        APPEND(instr);
        LABEL(context->currentIdentifier->name);
        APPEND("pushq %rbp");
        APPEND("movq %rsp, %rbp");

        GENERATE(2);

        sprintf(instr, "subq $%d, %%rsp", (context->argCnt + 5) * 4);
        APPEND(instr);

        // direct_declarator '(' identifier_list ')'
        // direct_declarator '[' constant_expression ']'
    }
    else  // error
    {
    }
}

void genJumpStatement(Context *context, GrammarTree *node)
{
    // GOTO IDENTIFIER ';'
    // CONTINUE ';'
    // BREAK ';'
    // RETURN ';'
    // RETURN expression ';'
    GENERATE(1);
    
    sprintf(instr, "jmp %s_function_ending", context->functionName.c_str());
    APPEND(instr);
}

void initGenControl(void (*generator[3000])(Context *context, GrammarTree *node))
{
    generator[PROGRAM] = genParserStart;
    generator[TRANSLATION_UNIT] = genTranslationUnit;
    generator[EXTERNAL_DECLARATION] = genExtermalDeclaration;
    generator[FUNCTION_DEFINITION] = genFunctionDefinition;
    generator[TYPE_SPECIFIER] = genTypeSpecifier;
    generator[COMPOUND_STATEMENT] = genCompoundStatement;
    generator[DECLARATION_LIST] = genDeclarationList;
    generator[DECLARATION] = genDeclaration;
    generator[DECLARATION_SPECIFIERS] = genDeclarationSpecifiers;
    generator[INIT_DECLARATOR_LIST] =genInitDeclaratorList;
    generator[INIT_DECLARATOR] = genInitDeclarator;
    generator[DECLARATOR] = genDeclarator;
    generator[DIRECT_DECLARATOR] = genDirectDeclarator;
    generator[PARAMETER_TYPE_LIST] = genParameterTypeList;
    generator[PARAMETER_LIST] = genParameterList;
    generator[PARAMETER_DECLARATION] = genParameterDeclaration;
    generator[JUMP_STATEMENT] = genJumpStatement;
}
