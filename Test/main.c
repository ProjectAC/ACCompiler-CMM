#include <stdio.h>
#include "../Tree/tree.h"
#include "../Tree/treeNodeTypeStrings.h"
#include "../Parser/ansicParser.h"

FILE *yyin, *fout;
GrammarTree *root;

extern void compile(FILE *fp, GrammarTree *root);

int main(int argc,char* argv[])
{
	yyin = fopen(argv[1], "r");
	yyparse();
	fclose(yyin);
    
    printf("\n\n");

    fout = fopen(argv[2], "w");
    initTreeNodeTypeStrings();
    compile(fout, root);
    fclose(fout);

	return 0;
}