#include "generator.h"
#include "context.h"

void genAdditiveExpression(Context *context, GrammarTree *node)
{
    // multiplicative_expression
    if (node->num == 1)
    {
        generate(context, node->child[0]);
    }
    // additive_expression '+' multiplicative_expression
    // additive_expression '-' multiplicative_expression
    else if (node->num == 3)
    {
        // 右参数
        generate(context, node->child[2]);
        // 左参数
        generate(context, node->child[0]);
        // 获取运算符，写入context
        generate(context, node->child[1]);
        if (context->operation == '+')
        {
            APPEND("pop eax");              // 此时eax内容是左参数
            APPEND("add [esp], eax");       // 栈顶元素是右参数
        }
        else if (context->operation == '-')
        {
            APPEND("pop eax");              // 此时eax内容是左参数
            APPEND("sub [esp], eax");       // 栈顶元素是右参数
        }
        else // error
        {
        }
        
    }
    else
    {
        
    }
}