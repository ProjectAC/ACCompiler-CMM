#include "generator.h"
#include "context.h"

static char instr[1000];
static char instructionString[2][3000][10];

void initGenOperators(void (*generator[3000])(Context *context, GrammarTree *node))
{
    generator[ASSIGNMENT_EXPRESSION] = genAssignmentExpression;
    generator[CONDITIONAL_EXPRESSION] = genConditionalExpression;
    generator[LOGICAL_OR_EXPRESSION] = genBinaryOperation;
    generator[LOGICAL_AND_EXPRESSION] = genBinaryOperation;
    generator[INCLUSIVE_OR_EXPRESSION] = genBinaryOperation;
    generator[EXCLUSIVE_OR_EXPRESSION] = genBinaryOperation;
    generator[AND_EXPRESSION] = genBinaryOperation;
    //generator[EQUALITY_EXPRESSION] = genEqualityExpression;
    //generator[RELATIONAL_EXPRESSION] = genRelationalExpression;
    generator[SHIFT_EXPRESSION] = genBinaryOperation;
    generator[ADDITIVE_EXPRESSION] = genBinaryOperation;
    generator[MULTIPLICATIVE_EXPRESSION] = genBinaryOperation;
    generator[CAST_EXPRESSION] = genCastExpression;
    generator[UNARY_EXPRESSION] = genUnaryExpression;
    generator[POSTFIX_EXPRESSION] = genPostfixExpression;
    generator[PRIMARY_EXPRESSION] = genPrimaryExpression;
}

void initInstructionString()
{
    strcpy(instructionString[INT][L_ASSIGN_RIGHT], "sarl");
    strcpy(instructionString[INT][L_ASSIGN_LEFT], "sall");
    strcpy(instructionString[INT][L_ASSIGN_ADD], "addl");
    strcpy(instructionString[INT][L_ASSIGN_SUB], "subl");
    strcpy(instructionString[INT][L_ASSIGN_MUL], "imull");
    strcpy(instructionString[INT][L_ASSIGN_DIV], "idivl");
    strcpy(instructionString[INT][L_ASSIGN_AND], "andl");
    strcpy(instructionString[INT][L_ASSIGN_XOR], "xorl");
    strcpy(instructionString[INT][L_ASSIGN_OR], "orl");
    strcpy(instructionString[INT][L_OP_RIGHT], "sarl");
    strcpy(instructionString[INT][L_OP_LEFT], "sall");
    strcpy(instructionString[INT]['='], "movl");
    strcpy(instructionString[INT]['&'], "andl");
    strcpy(instructionString[INT]['|'], "orl");
    strcpy(instructionString[INT]['-'], "subl");
    strcpy(instructionString[INT]['+'], "addl");
    strcpy(instructionString[INT]['*'], "imull");
    strcpy(instructionString[INT]['/'], "idivl");
    strcpy(instructionString[INT]['^'], "xorl");

    strcpy(instructionString[FLOAT][L_ASSIGN_ADD], "addss");
    strcpy(instructionString[FLOAT][L_ASSIGN_SUB], "subss");
    strcpy(instructionString[FLOAT][L_ASSIGN_MUL], "mulss");
    strcpy(instructionString[FLOAT][L_ASSIGN_DIV], "divss");
    strcpy(instructionString[FLOAT]['='], "movss");
    strcpy(instructionString[FLOAT]['-'], "subss");
    strcpy(instructionString[FLOAT]['+'], "addss");
    strcpy(instructionString[FLOAT]['*'], "mulss");
    strcpy(instructionString[FLOAT]['/'], "divss");
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

void genDeclarationSpecifiers(Context *context, GrammarTree *node)
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
        sprintf(instr, "movl %%eax, %s", context->currentIdentifier.address);
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

void genInitializer(Context *context, GrammarTree *node)
{
    // assignment_expression
    if (node->num == 1)
    {
        GENERATE(0);
    }
	//'{' initializer_list '}'
	// '{' initializer_list ',' '}'
    if (node->num == 3 || node->num == 4)
    {

    }
    else  // error
    {
    }
}

void genStatementList(Context *context, GrammarTree *node)
{
    // statement
    if (node->num == 1)
    {
        GENERATE(0);
    }
	// statement_list statement
    else if (node->num == 2)
    {
        GENERATE(0);
        GENERATE(1);
    }
}

void genStatement(Context *context, GrammarTree *node)
{
    // labeled_statement
	// compound_statement
	// expression_statement
	// selection_statement
	// iteration_statement
	// jump_statement
	GENERATE(0);
}

void genExpressionStatement(Context *context, GrammarTree *node)
{
    // ;
    if (node->num == 1)
    {
        // do nothing
    }
    // expression ';'
    else if (node->num == 2)
    {
	    GENERATE(0);
    }
}

void genExpression(Context *context, GrammarTree *node)
{
    // assignment_expression
    if (node->num == 1)
    {
        GENERATE(0);
    }
	// expression ',' assignment_expression
    else if (node->num == 3)
    {
        GENERATE(0);
        GENERATE(2);
    }
    else  // 
    {
    }
}

void genAssignmentExpression(Context *context, GrammarTree *node)
{
    // conditional_expression
    if (node->num == 1)
    {
        GENERATE(0);
    }
	// unary_expression assignment_operator assignment_expression
    else if (node->num == 3)
    {
        GENERATE(2);            // 获取右值
        GENERATE(1);            // 获取运算符，写入context
        GENERATE(0);            // 获取目标，写入context
        if (strcmp(instructionString[INT][context->operation], ""))  // error
        {
        }
        else
        {
            sprintf(instr, "%s %%eax, %s", context->operation);
            APPEND(instr);
        }
    }
    else
    {
    }
}

void genConditionalExpression(Context *context, GrammarTree *node)
{
    // logical_or_expression
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // logical_or_expression '?' expression ':' conditional_expression
    else if (node->num == 5)
    {
        GENERATE(0);                                    // 判断条件
        APPEND("cmpl %eax, $0");                        // 比较是不是0
        sprintf(instr, "je %d_false\n", node->id);      // 如果是0就跳转到冒号
        APPEND(instr);
        GENERATE(2);                                    // 否则继续执行（结果位于eax）
        sprintf(instr, "jmp %d_end\n", node->id);       // 并跳转到语句结束后
        APPEND(instr);
        sprintf(instr, "%d_false", node->id);           // false
        LABEL(instr);
        GENERATE(4);                                    // 冒号后
        sprintf(instr, "%d_end", node->id);             // end
        LABEL(instr);
    }
    else
    {
    }
}

void genBinaryOperation(Context *context, GrammarTree *node)
{
    // multiplicative_expression
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // additive_expression BINARY multiplicative_expression
    else if (node->num == 3)
    {
        GENERATE(2);                                // 右参数
        VALUE();
        APPEND("movl %%eax, %%edx");                // 暂存在edx
        GENERATE(0);                                // 左参数
        VALUE();
        GENERATE(1);                                // 获取运算符，写入context
        if (instructionString[INT][context->operation][0] == 0)  // error
        {
        }
        else
        {
            sprintf(instr, "%s %%edx, %%eax", instructionString[INT][context->operation]);
            APPEND(instr);
        }
    }
    else // error
    {
    }
}

void genCastExpression(Context *context, GrammarTree *node)
{
    // unary_expression
    if (node->num == 1)
    {
        GENERATE(0);
    }
	// '(' type_name ')' cast_expression
    else  // error
    {
    }
    
}

void genUnaryExpression(Context *context, GrammarTree *node)//我写的
{
    // postfix_expression
    if (node->num == 1)
    {
        GENERATE(0);
    }
    else if (node->num == 2)
    {
        // INC_OP unary_expression
        if(isType(node->child[0], L_OP_INC))
        {
            GENERATE(1);
            VALUE();
            APPEND("addl $1, %%eax");//不靠谱
            
        }
        // DEC_OP unary_expression
        if(isType(node->child[0], L_OP_DEC))
        {
            GENERATE(1);
            VALUE();
            APPEND("subl $1, %%eax");//不靠谱
            
        }
        // SIZEOF unary_expression
        if(isType(node->child[0],L_SIZEOF))
        {
            APPEND("movl $4, %%eax");//不靠谱
        }
        // unary_operator cast_expression
        else
        {
            GENARATOR(1);
            GENARATOR(0);
            
        }
       
        
    }
	// SIZEOF '(' type_name ')
    else if(node->num == 4)
    {
        if(isType(node->child[1],'('))  
        APPEND("movl $4, %%eax");//不靠谱
    }
    else  // error
    {
    }
}

void genPostfixExpression(Context *context, GrammarTree *node)//我该写但是没写
{
    // primary_expression
    if (node->num == 1)
    {
        GENERATE(0);
	}
    else if (node->num == 3)
    {
	    // postfix_expression '(' ')'
        if (isType(node->child[1], '('))
        {
            GENERATE(0);
            // TODO: 无参数函数调用
        }
        // postfix_expression '.' IDENTIFIER//identifier 看不懂 LLLD是啥
	    // postfix_expression PTR_OP IDENTIFIER
        else  // error
        {
        }
    }
    else if (node->num == 4)
    {
	    // postfix_expression '[' expression ']'
	    // postfix_expression '(' argument_expression_list ')'
    }
    // 暂时不支持++ --
    else  // error
    {
    }
}

void genPrimaryExpression(Context *context, GrammarTree *node)
{
    if (node->num == 1)
    {
        GENERATE(0);
    }
    // '(' expression ')'
    else if (node->num == 3)
    {
        GENERATE(1);
    }
    else // error
    {
    }
    
}


void genAssignmentOperator(Context *context, GrammarTree *node)//该我写，都是终结符得是不用写
{
    if(node->num == 1)
        GENARATOR(0);
}

void genLogicalOrExpression(Context *context, GrammarTree *node)//我写的
{
    //logical_and_expression
    if(node->num == 1)
    GENARATOR(0);
   //logical_or_expression OR_OP logical_and_expression
    else if(node->num == 3)
    {
      GENARATOR(0);
      VALUE();
      APPEND("movl %%eax, %%edx");  
      GENARATOR(2);
      VALUE();
      APPEND("orl, %%eax, %%edx");
    }
    else//error
    {

    }
}

void genLogicalAndExpression(Context *context, GrammarTree *node)//我写的
{
    //logical_or_expression
    if(node->num == 1)
    GENARATOR(0);
   // logical_and_expression AND_OP inclusive_or_expression
    else if(node->num == 3)
    {
      GENARATOR(0);
      VALUE();
      APPEND("movl %%eax, %%edx");  
      GENARATOR(2);
      VALUE();
      APPEND("andl, %%eax, %%edx");
    }
   else //error
   {

   }
}


void genInclusiveOrExpression(Context *context, GrammarTree *node)//我写的
{
    //exclusive_or_expression
    if(node->num == 1)
    GENARATOR(0);
    //inclusive_or_expression '|' exclusive_or_expression
    else if(node->num == 3)
    {
      GENARATOR(0);
      VALUE();
      APPEND("movl %%eax, %%edx");  
      GENARATOR(2);
      VALUE();
      APPEND("orl, %%eax, %%edx");
    }
}

void genExclusiveOrExpression(Context *context, GrammarTree *node)//我写的
{
    //and_expression
    if(node->num == 1)
    GENARATOR(0);
    //exclusive_or_expression '^' and_expression
    else if(node->num == 3)
    {
      GENARATOR(0);
      VALUE();
      APPEND("movl %%eax, %%edx");  
      GENARATOR(2);
      VALUE();
      APPEND("orl, %%eax, %%edx");
    }
}

void genAndExpression(Context *context, GrammarTree *node)//我写得
{
    // equality_expression
    if(node->num == 1)
    GENERATE(0);
    //and_expression '&' equality_expression
    else if (node ->num == 3)
    {
      GENARATOR(0);
      VALUE();
      APPEND("movl %%eax, %%edx");  
      GENARATOR(2);
      VALUE();
      APPEND("andl, %%eax, %%edx");
    }

   else //error
   {

   }
}
      
void genEqualityExpression(Context *context, GrammarTree *node)//?
{
    //equality_expression:
   if(node->num == 1)
      GENERATE(0);
} 


void genRelationalExpression(Context *context, GrammarTree *node)//?
{
    
   if(node->num == 1)
      GENERATE(0);
} 

void genShiftExpression(Context *context, GrammarTree *node)//?
{
    
   if(node->num == 1)
      GENERATE(0);
} 

void genAdditiveExpression(Context *context, GrammarTree *node)
{
    //multiplicative_expression
    if(node->num == 1)
    GENARATOR(0);
    else if(node->num == 3)
    {
        //additive_expression '+' multiplicative_expression
        if(isType(node->child[1],'+'))
        {
            GENARATOR(0);
            VALUE();
            APPEND("movl %%eax, %%edx");
            GENARATOR(2);
            VALUE();
            APPEND("addl %%edx, %%eax");
        }
       //additive_expression '-' multiplicative_expression
        if(isType(node->child[1],'-'))
        {
            GENARATOR(0);
            VALUE();
            APPEND("movl %%eax, %%edx");
            GENARATOR(2);
            VALUE();
            APPEND("subq %%edx, %%eax");
        }
       
    
    }
    else//error
    {

    }
}

void genMultiplicativeExpression(Context *context, GrammarTree *node)
{
    if(node->num == 1)
    GENERATE(0);
}

void genCastExpression(Context *context, GrammarTree *node)
{
    if(node->num == 1)
    GENERATE(0);
}

     



void genLeafIdentifier(Context *context, GrammarTree *node)
{
    // context->currentIdentifier = ;
}

void genLeafStringLiteral(Context *context, GrammarTree *node)
{
    STRING(node->content);
}

void genLeafOperator(Context *context, GrammarTree *node)
{
    context->operation = node->type;
}

void genPlaceHolder()
{
    // 什么也不干
}