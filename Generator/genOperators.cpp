#include "generator.h"
#include "context.h"
#include "string.h"

static char instr[1000];
static char instructionString[3][3000][10];

void initInstructionString()
{
    strcpy(instructionString[CMD_INT][L_ASSIGN_RIGHT], "sarl");
    strcpy(instructionString[CMD_INT][L_ASSIGN_LEFT], "sall");
    strcpy(instructionString[CMD_INT][L_ASSIGN_ADD], "addl");
    strcpy(instructionString[CMD_INT][L_ASSIGN_SUB], "subl");
    strcpy(instructionString[CMD_INT][L_ASSIGN_MUL], "imull");
    strcpy(instructionString[CMD_INT][L_ASSIGN_DIV], "idivl");
    strcpy(instructionString[CMD_INT][L_ASSIGN_AND], "andl");
    strcpy(instructionString[CMD_INT][L_ASSIGN_XOR], "xorl");
    strcpy(instructionString[CMD_INT][L_ASSIGN_OR], "orl");
    strcpy(instructionString[CMD_INT][L_OP_RIGHT], "sarl");
    strcpy(instructionString[CMD_INT][L_OP_LEFT], "sall");
    strcpy(instructionString[CMD_INT]['='], "movl");
    strcpy(instructionString[CMD_INT]['&'], "andl");
    strcpy(instructionString[CMD_INT]['|'], "orl");
    strcpy(instructionString[CMD_INT]['-'], "subl");
    strcpy(instructionString[CMD_INT]['+'], "addl");
    strcpy(instructionString[CMD_INT]['*'], "imull");
    strcpy(instructionString[CMD_INT]['/'], "idivl");
    strcpy(instructionString[CMD_INT]['^'], "xorl");

    strcpy(instructionString[CMD_FLOAT][L_ASSIGN_ADD], "addss");
    strcpy(instructionString[CMD_FLOAT][L_ASSIGN_SUB], "subss");
    strcpy(instructionString[CMD_FLOAT][L_ASSIGN_MUL], "mulss");
    strcpy(instructionString[CMD_FLOAT][L_ASSIGN_DIV], "divss");
    strcpy(instructionString[CMD_FLOAT]['='], "movss");
    strcpy(instructionString[CMD_FLOAT]['-'], "subss");
    strcpy(instructionString[CMD_FLOAT]['+'], "addss");
    strcpy(instructionString[CMD_FLOAT]['*'], "mulss");
    strcpy(instructionString[CMD_FLOAT]['/'], "divss");
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
        GENERATE(2);            // ��ȡ��ֵ
        GENERATE(1);            // ��ȡ�������д��context
        GENERATE(0);            // ��ȡĿ�꣬д��context
        if (strcmp(instructionString[CMD_INT][context->operation], ""))  // error
        {
        }
        else
        {
            sprintf(instr, "%s %%eax, %d(%%ebp)", instructionString[CMD_INT][context->operation], context->currentIdentifier->address);
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
        GENERATE(0);                                    // �ж�����
        APPEND("cmpl %eax, $0");                        // �Ƚ��ǲ���0
        sprintf(instr, "je %d_false\n", node->id);      // �����0����ת��ð��
        APPEND(instr);
        GENERATE(2);                                    // �������ִ�У����λ��eax��
        sprintf(instr, "jmp %d_end\n", node->id);       // ����ת����������
        APPEND(instr);
        sprintf(instr, "%d_false", node->id);           // false
        LABEL(instr);
        GENERATE(4);                                    // ð�ź�
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
        GENERATE(2);                                // �Ҳ���
        VALUE();
        APPEND("movl %%eax, %%edx");                // �ݴ���edx
        GENERATE(0);                                // �����
        VALUE();
        GENERATE(1);                                // ��ȡ�������д��context
        if (instructionString[CMD_INT][context->operation][0] == 0)  // error
        {
        }
        else
        {
            sprintf(instr, "%s %%edx, %%eax", instructionString[CMD_INT][context->operation]);
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

void genUnaryExpression(Context *context, GrammarTree *node)//��д��
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
            APPEND("addl $1, %%eax");//������
            
        }
        // DEC_OP unary_expression
        if(isType(node->child[0], L_OP_DEC))
        {
            GENERATE(1);
            VALUE();
            APPEND("subl $1, %%eax");//������
            
        }
        // SIZEOF unary_expression
        if(isType(node->child[0],L_SIZEOF))
        {
            APPEND("movl $4, %%eax");//������
        }
        // unary_operator cast_expression
        else
        {
            GENERATE(1);
            GENERATE(0);
        }
    }
	// SIZEOF '(' type_name ')
    else if(node->num == 4)
    {
        if(isType(node->child[1], '('))  
        APPEND("movl $4, %%eax");//������
    }
    else  // error
    {
    }
}

void genPostfixExpression(Context *context, GrammarTree *node)//�Ҹ�д����ûд
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
            // TODO: �޲�����������
        }
        // postfix_expression '.' IDENTIFIER//identifier ������ LLLD��ɶ
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
    // ��ʱ��֧��++ --
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

void genAssignmentOperator(Context *context, GrammarTree *node)//����д�������ս�����ǲ���д
{
    if(node->num == 1)
        GENERATE(0);
}

void genLogicalOrExpression(Context *context, GrammarTree *node)//��д��
{
    //logical_and_expression
    if(node->num == 1)
    GENERATE(0);
   //logical_or_expression OR_OP logical_and_expression
    else if(node->num == 3)
    {
      GENERATE(0);
      VALUE();
      APPEND("movl %%eax, %%edx");  
      GENERATE(2);
      VALUE();
      APPEND("orl, %%eax, %%edx");
    }
    else//error
    {

    }
}

void genLogicalAndExpression(Context *context, GrammarTree *node)//��д��
{
    //logical_or_expression
    if(node->num == 1)
        GENERATE(0);
    // logical_and_expression AND_OP inclusive_or_expression
    else if(node->num == 3)
    {
        GENERATE(0);
        VALUE();
        APPEND("movl %%eax, %%edx");  
        GENERATE(2);
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
    // ʲôҲ����
}

void initGenOperators(void (*generator[3000])(Context *context, GrammarTree *node))
{
    generator[ASSIGNMENT_EXPRESSION] = genAssignmentExpression;
    generator[CONDITIONAL_EXPRESSION] = genConditionalExpression;
    generator[LOGICAL_OR_EXPRESSION] = genBinaryOperation;
    generator[LOGICAL_AND_EXPRESSION] = genBinaryOperation;
    generator[INCLUSIVE_OR_EXPRESSION] = genBinaryOperation;
    generator[EXCLUSIVE_OR_EXPRESSION] = genBinaryOperation;
    generator[AND_EXPRESSION] = genBinaryOperation;
    generator[EQUALITY_EXPRESSION] = genEqualityExpression;
    generator[RELATIONAL_EXPRESSION] = genRelationalExpression;
    generator[SHIFT_EXPRESSION] = genBinaryOperation;
    generator[ADDITIVE_EXPRESSION] = genBinaryOperation;
    generator[MULTIPLICATIVE_EXPRESSION] = genBinaryOperation;
    generator[CAST_EXPRESSION] = genCastExpression;
    generator[UNARY_EXPRESSION] = genUnaryExpression;
    generator[POSTFIX_EXPRESSION] = genPostfixExpression;
    generator[PRIMARY_EXPRESSION] = genPrimaryExpression;
    generator[ASSIGNMENT_OPERATOR] =genAssignmentOperator;
    generator[INITIALIZER] = genInitializer;
    generator[STATEMENT_LIST] = genStatementList;
    generator[STATEMENT] = genStatement;
    generator[EXPRESSION_STATEMENT] =genExpressionStatement;
    generator[EXPRESSION]=genExpression;
}
