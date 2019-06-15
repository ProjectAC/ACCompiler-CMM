#include "tree.h"
#include "../Essentials/essentials.h"
#include "treeNodeTypeStrings.h"
#include <string.h>

static int id;

GrammarTree* createTree(NodeType type, int num, ...)
{
    va_list valist;
    GrammarTree* node = (GrammarTree *)malloc(sizeof(GrammarTree));
    if (!node)
    {
        printf("Malloc failed!\n");
        exit(0);
    }

    node->child = (GrammarTree **)malloc(sizeof(GrammarTree*) * num);
    if (!node->child)
    {
        printf("Malloc failed!\n");
        exit(0);
    }

    node->id = ++id;
    node->content = NULL;
    node->type = type;
    node->num = num;
    va_start(valist, num);
    for (int i = 0; i < num; i++)
        node->child[i] = va_arg(valist, GrammarTree*);
    node->line = node->child[0]->line;
    return node;
}

GrammarTree* createLeaf(NodeType type, int line)
{
    GrammarTree* node = (GrammarTree *)malloc(sizeof(GrammarTree));
    if (!node)
    {
        printf("Malloc failed!\n");
        exit(0);
    }

    node->id = ++id;
    node->line = line;
    node->child = NULL;
    node->type = type;
    node->num = 0;
    if(node->type == L_CONSTANT_INT)
    {
        int value;
        if(strlen(yytext) > 1 && yytext[0] == '0' && yytext[1] != 'x')
            sscanf(yytext, "%o", &value);
        else if(strlen(yytext) > 1 && yytext[1] == 'x')
            sscanf(yytext, "%x", &value);
        else
            sscanf(yytext, "%d", &value);
        node->content = newInt(value);
    }
    else if(node->type == L_CONSTANT_DOUBLE)
    {
        double value;
        sscanf(yytext, "%lf", &value);
        node->content = newFloat(value);
    }
    else if(node->type == L_TRUE)
    {
        node->content = newInt(1);
    }
    else if(node->type == L_FALSE)
    {
        node->content = newInt(0);
    }
    else if(node->type == L_STRING_LITERAL)
    {
        node->content = newString(yytext);
    }
    else
    {
        node->content = newString(yytext);
    }
    return node;
}

void eval(GrammarTree *node, int level)
{
    if (node)
    {
        if (node->line != -1)
        {
            for (int i = 0; i < level; i++)
                printf("| ");
            printf("(%d) ", node->id);
            if(node->type < L_MAX)
            {
                printf("TERMINAL ");
                if (node->type == L_CONSTANT_INT)
                    printf("%lld", *(long long *)node->content);
                else if (node->type == L_CONSTANT_DOUBLE)
                    printf("%lf", *(double *)node->content);
                else
                    printf("%s", (char *)node->content);
            }
            else
                printf("%s <%d>", treeNodeTypeStrings[node->type], node->line);
            printf(" [%d] \n", node->num);
            
            for (int i = 0; i < node->num; i++)
                eval(node->child[i], level + 1);
        }
    }
}

void deleteGrammarTree(GrammarTree* node)
{
	if (node == NULL)
		return;
    if (node->content)
        free(node->content);
    if (node->child)
    {
        for (int i = 0; i < node->num; i++)
            deleteGrammarTree(node->child[i]);
        free(node->child);
    }
    free(node);
}
