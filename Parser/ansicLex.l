%{
#include "../Tree/tree.h"
#include "ansicParser.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void count();
void comment();
// int typeCheck();

int column = 0;
%}

%option yylineno

D			[0-9]
L			[a-zA-Z_]
H			[a-fA-F0-9]
E			[Ee][+-]?{D}+
P           [Ee][+-]?{H}+
FS			(f|F|l|L)
IS			(u|U|l|L)*

%%

"/*"			{ comment(); }
"//"[^\n]*      {}

"auto"			{ count(); yylval.gt = createLeaf(L_AUTO,yylineno);			return(AUTO); }
"bool"			{ count(); yylval.gt = createLeaf(L_BOOL,yylineno); 		return(BOOL);	}
"break"			{ count(); yylval.gt = createLeaf(L_BREAK,yylineno);		return(BREAK); }
"case"			{ count(); yylval.gt = createLeaf(L_CASE,yylineno);			return(CASE); }
"char"			{ count(); yylval.gt = createLeaf(L_CHAR,yylineno);			return(CHAR); }
"const"			{ count(); yylval.gt = createLeaf(L_CONST,yylineno);		return(CONST); }
"continue"		{ count(); yylval.gt = createLeaf(L_CONTINUE,yylineno);		return(CONTINUE); }
"default"		{ count(); yylval.gt = createLeaf(L_DEFAULT,yylineno);		return(DEFAULT); }
"do"			{ count(); yylval.gt = createLeaf(L_DO,yylineno);			return(DO); }
"double"		{ count(); yylval.gt = createLeaf(L_DOUBLE,yylineno);		return(DOUBLE); }
"else"			{ count(); yylval.gt = createLeaf(L_ELSE,yylineno);			return(ELSE); }
"enum"			{ count(); yylval.gt = createLeaf(L_ENUM,yylineno);			return(ENUM); }
"extern"		{ count(); yylval.gt = createLeaf(L_EXTERN,yylineno);		return(EXTERN); }
"float"			{ count(); yylval.gt = createLeaf(L_FLOAT,yylineno);		return(FLOAT); }
"for"			{ count(); yylval.gt = createLeaf(L_FOR,yylineno);			return(FOR); }
"goto"			{ count(); yylval.gt = createLeaf(L_GOTO,yylineno);			return(GOTO); }
"if"			{ count(); yylval.gt = createLeaf(L_IF,yylineno);			return(IF); }
"int"			{ count(); yylval.gt = createLeaf(L_INT,yylineno);			return(INT); }
"long"			{ count(); yylval.gt = createLeaf(L_LONG,yylineno);			return(LONG); }
"register"		{ count(); yylval.gt = createLeaf(L_REGISTER,yylineno);		return(REGISTER); }
"return"		{ count(); yylval.gt = createLeaf(L_RETURN,yylineno);		return(RETURN); }
"short"			{ count(); yylval.gt = createLeaf(L_LONG,yylineno);      	return(SHORT); }
"signed"		{ count(); yylval.gt = createLeaf(L_SIGNED,yylineno);		return(SIGNED); }
"sizeof"		{ count(); yylval.gt = createLeaf(L_SIZEOF,yylineno);		return(SIZEOF); }
"static"		{ count(); yylval.gt = createLeaf(L_STATIC,yylineno);		return(STATIC); }
"struct"		{ count(); yylval.gt = createLeaf(L_STRUCT,yylineno);		return(STRUCT); }
"switch"		{ count(); yylval.gt = createLeaf(L_SWITCH,yylineno);		return(SWITCH); }
"typedef"		{ count(); yylval.gt = createLeaf(L_TYPEDEF,yylineno);		return(TYPEDEF); }
"union"			{ count(); yylval.gt = createLeaf(L_UNION,yylineno);		return(UNION); }
"unsigned"		{ count(); yylval.gt = createLeaf(L_UNSIGNED,yylineno);		return(UNSIGNED); }
"void"			{ count(); yylval.gt = createLeaf(L_VOID,yylineno);			return(VOID); }
"volatile"		{ count(); yylval.gt = createLeaf(L_VOLATILE,yylineno);		return(VOLATILE); }
"while"			{ count(); yylval.gt = createLeaf(L_WHILE,yylineno);		return(WHILE); }
"true"			{ count(); yylval.gt = createLeaf(L_TRUE,yylineno);			return(TRUE); }
"false"			{ count(); yylval.gt = createLeaf(L_FALSE,yylineno);		return(FALSE); }

{L}({L}|{D})* 				{ count(); yylval.gt = createLeaf(L_IDENTIFIER,yylineno);	return(IDENTIFIER); /*IDENTIFIER*/ }

0[xX]{H}+{IS}?				{ count(); yylval.gt = createLeaf(L_CONSTANT_INT,yylineno);	return(CONSTANT_INT); }
0[0-7]*{IS}?				{ count(); yylval.gt = createLeaf(L_CONSTANT_INT,yylineno);	return(CONSTANT_INT); }
[1-9]{D}*{IS}?				{ count(); yylval.gt = createLeaf(L_CONSTANT_INT,yylineno);	return(CONSTANT_INT); }
L?'(\\.|[^\\'\n])+'			{ count(); return(CONSTANT); }

{D}+{E}{FS}?				{ count(); yylval.gt = createLeaf(L_CONSTANT_DOUBLE,yylineno);	return(CONSTANT_DOUBLE); }
{D}*"."{D}+{E}?{FS}?		{ count(); yylval.gt = createLeaf(L_CONSTANT_DOUBLE,yylineno);	return(CONSTANT_DOUBLE); }
{D}+"."{D}*{E}?{FS}?		{ count(); yylval.gt = createLeaf(L_CONSTANT_DOUBLE,yylineno);	return(CONSTANT_DOUBLE); }
0[xX]{H}+{P}{FS}?			{ count(); return(CONSTANT); }
0[xX]{H}*"."{H}+{P}?{FS}?   { count(); return(CONSTANT); }
0[xX]{H}+"."{H}*{P}?{FS}?   { count(); return(CONSTANT); }
L?\"(\\.|[^\\"])*\"			{ count(); yylval.gt = createLeaf(L_STRING_LITERAL,yylineno);	return(STRING_LITERAL); }
L?\"(\\.|[^\\"\n])*\"		{ count(); yylval.gt = createLeaf(L_STRING_LITERAL,yylineno);	return(STRING_LITERAL); }

"..."			{ count(); return(ELLIPSIS); }
">>="			{ count(); yylval.gt = createLeaf(L_ASSIGN_RIGHT_,yylineno);	return(RIGHT_ASSIGN); }
"<<="			{ count(); yylval.gt = createLeaf(L_ASSIGN_LEFT,yylineno);		return(LEFT_ASSIGN); }
"+="			{ count(); yylval.gt = createLeaf(L_ASSIGN_ADD,yylineno);		return(ADD_ASSIGN); }
"-="			{ count(); yylval.gt = createLeaf(L_ASSIGN_SUB,yylineno);		return(SUB_ASSIGN); }
"*="			{ count(); yylval.gt = createLeaf(L_ASSIGN_MUL,yylineno);		return(MUL_ASSIGN); }
"/="			{ count(); yylval.gt = createLeaf(L_ASSIGN_DIV,yylineno);		return(DIV_ASSIGN); }
"%="			{ count(); yylval.gt = createLeaf(L_ASSIGN_MOD,yylineno);		return(MOD_ASSIGN); }
"&="			{ count(); yylval.gt = createLeaf(L_ASSIGN_AND,yylineno);		return(AND_ASSIGN); }
"^="			{ count(); yylval.gt = createLeaf(L_ASSIGN_XOR,yylineno);		return(XOR_ASSIGN); }
"|="			{ count(); yylval.gt = createLeaf(L_ASSIGN_OR,yylineno);		return(OR_ASSIGN); }
">>"			{ count(); yylval.gt = createLeaf(L_OP_RIGHT,yylineno);			return(RIGHT_OP); }
"<<"			{ count(); yylval.gt = createLeaf(L_OP_LEFT,yylineno);			return(LEFT_OP); }
"++"			{ count(); yylval.gt = createLeaf(L_OP_INC,yylineno);			return(INC_OP); }
"--"			{ count(); yylval.gt = createLeaf(L_OP_DEC,yylineno);			return(DEC_OP); }
"->"			{ count(); yylval.gt = createLeaf(L_OP_PTR,yylineno);			return(PTR_OP); }
"&&"			{ count(); yylval.gt = createLeaf(L_OP_AND,yylineno);			return(AND_OP); }
"||"			{ count(); yylval.gt = createLeaf(L_OP_OR,yylineno);			return(OR_OP); }
"<="			{ count(); yylval.gt = createLeaf(L_OP_LE,yylineno);			return(LE_OP); }
">="			{ count(); yylval.gt = createLeaf(L_OP_GE,yylineno);			return(GE_OP); }
"=="			{ count(); yylval.gt = createLeaf(L_OP_EQ,yylineno);			return(EQ_OP); }
"!="			{ count(); yylval.gt = createLeaf(L_OP_NE,yylineno);			return(NE_OP); }
";"				{ count(); yylval.gt = createLeaf(';',yylineno);return(';'); }
"{"				{ count(); yylval.gt = createLeaf('{',yylineno);return('{'); }
"}"				{ count(); yylval.gt = createLeaf('}',yylineno);return('}'); }
","				{ count(); yylval.gt = createLeaf(',',yylineno);return(','); }
":"				{ count(); yylval.gt = createLeaf(':',yylineno);return(':'); }
"="				{ count(); yylval.gt = createLeaf('=',yylineno);return('='); }
"("				{ count(); yylval.gt = createLeaf('(',yylineno);return('('); }
")"				{ count(); yylval.gt = createLeaf(')',yylineno);return(')'); }
"["				{ count(); yylval.gt = createLeaf('[',yylineno);return('['); }
"]"				{ count(); yylval.gt = createLeaf(']',yylineno);return(']'); }
"."				{ count(); yylval.gt = createLeaf('.',yylineno);return('.'); }
"&"				{ count(); yylval.gt = createLeaf('&',yylineno);return('&'); }
"!"				{ count(); yylval.gt = createLeaf('!',yylineno);return('!'); }
"~"				{ count(); yylval.gt = createLeaf('~',yylineno);return('~'); }
"-"				{ count(); yylval.gt = createLeaf('-',yylineno);return('-'); }
"+"				{ count(); yylval.gt = createLeaf('+',yylineno);return('+'); }
"*"				{ count(); yylval.gt = createLeaf('*',yylineno);return('*'); }
"/"				{ count(); yylval.gt = createLeaf('/',yylineno);return('/'); }
"%"				{ count(); yylval.gt = createLeaf('%',yylineno);return('%'); }
"<"				{ count(); yylval.gt = createLeaf('<',yylineno);return('<'); }
">"				{ count(); yylval.gt = createLeaf('>',yylineno);return('>'); }
"^"				{ count(); yylval.gt = createLeaf('^',yylineno);return('^'); }
"|"				{ count(); yylval.gt = createLeaf('|',yylineno);return('|'); }
"?"				{ count(); yylval.gt = createLeaf('?',yylineno);return('?'); }

[ \t\v\n\f] 	{ count(); }
.				{ }

%%

int yywrap()
{
	return 1;
}

comment() 
{ 
	char c, c1; 
	loop: 
		while ((c = input()) != '*' && c != 0) 
			putchar(c); 
		if ((c1 = input()) != '/' && c != 0) 
		{ 	
			unput(c1); 
			goto loop; 
		} 
		if (c != 0) 
			putchar(c1); 
}

void count()
{
	int i;

	for (i = 0; yytext[i] != '\0'; i++)
		if (yytext[i] == '\n')
			column = 0;
		else if (yytext[i] == '\t')
			column += 4 - (column % 4);
		else
			column++;
	ECHO;
}

/*
int typeCheck()
{
	if (yytext == type_name)
		return (TYPE_NAME);
	return (IDENTIFIER);
}
*/
