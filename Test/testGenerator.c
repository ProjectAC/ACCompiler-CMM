#include <stdio.h>
#include "../Tree/tree.h"
#include "../Tree/treeNodeTypeStrings.h"
#include "../Parser/ansicParser.h"

FILE *yyin;
GrammarTree *root;

int main(int argc,char* argv[])
{
	yyin = fopen(argv[1], "r");
	yyparse();
	fclose(yyin);

	printf("\n\n");
	return 0;
}