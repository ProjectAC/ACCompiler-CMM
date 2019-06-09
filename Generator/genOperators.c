#include "generator.h"
#include "context.h"

static char instr[1000];
static char instructionString[2][3000][10];

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
        GENERATE(2);            // 获取右值（栈顶）
        GENERATE(1);            // 获取运算符，写入context
        GENERATE(0);            // 获取目标，写入context
        if (strcmp(instructionString[INT][context->operation], ""))  // error
        {
        }
        else
        {
            sprintf(instr, "%s %%eax, %s", context->operation, context->target);
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

void genOperator(Context *context, GrammarTree *node)
{
    context->operation = node->type;
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
        APPEND("movl %%eax, %%edx");                // 暂存在edx
        GENERATE(0);                                // 左参数
        GENERATE(1);                                // 获取运算符，写入context
        if (instructionString[context->operation][0] == 0)  // error
        {
        }
        else
        {
            sprintf(instr, "%s %%edx, %%eax", context->operation, context->target);
            APPEND(instr);
        }
    }
    else // error
    {
    }
}
