%{
#include "y.tab.h"
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include "tree.h"
#include <iostream>
using namespace std;

void count(void);
void comment();
int type_check();

int column=0;
%}
%option yylineno

D			[0-9]
L			[a-zA-Z_]
H			[a-fA-F0-9]
E			[Ee][+-]?{D}+
FS			(f|F|l|L)
IS			(u|U|l|L)*
%%
"/*"			{ comment(); }
"//"[^\n]*      {}

"auto"			{ count(); yylval.gt =create_tree("AUTO",0,yylineno);		return(AUTO); }
"bool"			{ count(); yylval.gt =create_tree("BOOL",0,yylineno); 		return(BOOL);	}
"break"			{ count(); yylval.gt =create_tree("BREAK",0,yylineno);		return(BREAK); }
"case"			{ count(); yylval.gt =create_tree("CASE",0,yylineno);		return(CASE); }
"char"			{ count(); yylval.gt =create_tree("CHAR",0,yylineno);		return(CHAR); }
"const"			{ count(); yylval.gt =create_tree("CONST",0,yylineno);		return(CONST); }
"continue"		{ count(); yylval.gt =create_tree("CONTINUE",0,yylineno);	return(CONTINUE); }
"default"		{ count(); yylval.gt =create_tree("DEFAULT",0,yylineno);	return(DEFAULT); }
"do"			{ count(); yylval.gt =create_tree("DO",0,yylineno);			return(DO); }
"double"		{ count(); yylval.gt =create_tree("DOUBLE",0,yylineno);		return(DOUBLE); }
"else"			{ count(); yylval.gt =create_tree("ELSE",0,yylineno);		return(ELSE); }
"enum"			{ count(); yylval.gt =create_tree("ENUM",0,yylineno);		return(ENUM); }
"extern"		{ count(); yylval.gt =create_tree("EXTERN",0,yylineno);		return(EXTERN); }
"float"			{ count(); yylval.gt =create_tree("FLOAT",0,yylineno);		return(FLOAT); }
"for"			{ count(); yylval.gt =create_tree("FOR",0,yylineno);		return(FOR); }
"goto"			{ count(); yylval.gt =create_tree("GOTO",0,yylineno);       return(GOTO); }
"if"			{ count(); yylval.gt =create_tree("IF",0,yylineno);			return(IF); }
"int"			{ count(); yylval.gt =create_tree("INT",0,yylineno);		return(INT); }
"long"			{ count(); yylval.gt =create_tree("LONG",0,yylineno);		return(LONG); }
"register"		{ count(); yylval.gt =create_tree("REGISTER",0,yylineno);   return(REGISTER); }
"return"		{ count(); yylval.gt =create_tree("RETURN",0,yylineno);     return(RETURN); }
"short"			{ count(); yylval.gt =create_tree("LONG",0,yylineno);       return(SHORT); }
"signed"		{ count(); yylval.gt =create_tree("SIGNED",0,yylineno);     return(SIGNED); }
"sizeof"		{ count(); yylval.gt =create_tree("SIZEOF",0,yylineno);		return(SIZEOF); }
"static"		{ count(); yylval.gt =create_tree("STATIC",0,yylineno);		return(STATIC); }
"struct"		{ count(); yylval.gt =create_tree("STRUCT",0,yylineno);		return(STRUCT); }
"switch"		{ count(); yylval.gt =create_tree("SWITCH",0,yylineno);		return(SWITCH); }
"typedef"		{ count(); yylval.gt =create_tree("TYPEDEF",0,yylineno);	return(TYPEDEF); }
"union"			{ count(); yylval.gt =create_tree("UNION",0,yylineno);		return(UNION); }
"unsigned"		{ count(); yylval.gt =create_tree("UNSIGNED",0,yylineno);	return(UNSIGNED); }
"void"			{ count(); yylval.gt =create_tree("VOID",0,yylineno);		return(VOID); }
"volatile"		{ count(); yylval.gt =create_tree("VOLATILE",0,yylineno);	return(VOLATILE); }
"while"			{ count(); yylval.gt =create_tree("WHILE",0,yylineno);		return(WHILE); }
"true"			{ count(); yylval.gt =create_tree("TRUE",0,yylineno);		return(TRUE); }
"false"			{ count(); yylval.gt =create_tree("FALSE",0,yylineno);		return(FALSE); }

{L}({L}|{D})* 	{count(); yylval.gt =create_tree("IDENTIFIER",0,yylineno);	return(check_type());/*IDENTIFIER*/ }

0[xX]{H}+{IS}?	{ count(); yylval.gt =create_tree("CONSTANT_INT",0,yylineno);	return(CONSTANT_INT); }
0[0-7]*{IS}?	{ count(); yylval.gt =create_tree("CONSTANT_INT",0,yylineno);	return(CONSTANT_INT); }
[1-9]{D}*{IS}?	{ count(); yylval.gt =create_tree("CONSTANT_INT",0,yylineno);	return(CONSTANT_INT); }
L?'(\\.|[^\\'\n])+'		{ count(); return(CONSTANT); }

{D}+{E}{FS}?				{ count(); yylval.gt =create_tree("CONSTANT_DOUBLE",0,yylineno);	return(CONSTANT_DOUBLE); }
{D}*"."{D}+{E}?{FS}?		{ count(); yylval.gt =create_tree("CONSTANT_DOUBLE",0,yylineno);	return(CONSTANT_DOUBLE); }
{D}+"."{D}*{E}?{FS}?		{ count(); yylval.gt =create_tree("CONSTANT_DOUBLE",0,yylineno);	return(CONSTANT_DOUBLE); }
0[xX]{H}+{P}{FS}?			{ count(); return(CONSTANT); }
0[xX]{H}*"."{H}+{P}?{FS}?   { count(); return(CONSTANT); }
0[xX]{H}+"."{H}*{P}?{FS}?   { count(); return(CONSTANT); }
L?\"(\\.|[^\\"])*\"	{ count(); yylval.gt =create_tree("STRING_LITERAL",0,yylineno);	return(STRING_LITERAL); }
L?\"(\\.|[^\\"\n])*\"	{ count();  yylval.gt =create_tree("STRING_LITERAL",0,yylineno);	return(STRING_LITERAL); }

"..."			{ count(); return(ELLIPSIS); }
">>="			{ count(); yylval.gt =create_tree("RIGHT_ASSIGN",0,yylineno);	return(RIGHT_ASSIGN); }
"<<="			{ count(); yylval.gt =create_tree("LEFT_ASSIGN",0,yylineno);	return(LEFT_ASSIGN); }
"+="			{ count(); yylval.gt =create_tree("ADD_ASSIGN",0,yylineno);		return(ADD_ASSIGN); }
"-="			{ count(); yylval.gt =create_tree("SUB_ASSIGN",0,yylineno);		return(SUB_ASSIGN); }
"*="			{ count(); yylval.gt =create_tree("MUL_ASSIGN",0,yylineno);		return(MUL_ASSIGN); }
"/="			{ count(); yylval.gt =create_tree("DIV_ASSIGN",0,yylineno);		return(DIV_ASSIGN); }
"%="			{ count(); yylval.gt =create_tree("MOD_ASSIGN",0,yylineno);		return(MOD_ASSIGN); }
"&="			{ count(); yylval.gt =create_tree("AND_ASSIGN",0,yylineno);		return(AND_ASSIGN); }
"^="			{ count(); yylval.gt =create_tree("XOR_ASSIGN",0,yylineno);		return(XOR_ASSIGN); }
"|="			{ count(); yylval.gt =create_tree("OR_ASSIGN",0,yylineno);		return(OR_ASSIGN); }
">>"			{ count(); yylval.gt =create_tree("RIGHT_OP",0,yylineno);		return(RIGHT_OP); }
"<<"			{ count(); yylval.gt =create_tree("LEFT_OP",0,yylineno);		return(LEFT_OP); }
"++"			{ count(); yylval.gt =create_tree("INC_OP",0,yylineno);			return(INC_OP); }
"--"			{ count(); yylval.gt =create_tree("DEC_OP",0,yylineno);			return(DEC_OP); }
"->"			{ count(); yylval.gt =create_tree("PTR_OP",0,yylineno);			return(PTR_OP); }
"&&"			{ count(); yylval.gt =create_tree("AND_OP)",0,yylineno);		return(AND_OP); }
"||"			{ count(); yylval.gt =create_tree("OR_OP",0,yylineno);			return(OR_OP); }
"<="			{ count(); yylval.gt =create_tree("LE_OP",0,yylineno);			return(LE_OP); }
">="			{ count(); yylval.gt =create_tree("GE_OP",0,yylineno);			return(GE_OP); }
"=="			{ count(); yylval.gt =create_tree("EQ_OP",0,yylineno);			return(EQ_OP); }
"!="			{ count(); yylval.gt =create_tree("NE_OP",0,yylineno);			return(NE_OP); }
";"			{ count(); yylval.gt =create_tree(";",0,yylineno);return(';'); }
"{"			{ count(); yylval.gt =create_tree("{",0,yylineno);return('{'); }
"}"			{ count(); yylval.gt =create_tree("}",0,yylineno);return('}'); }
","			{ count(); yylval.gt =create_tree(",",0,yylineno);return(','); }
":"			{ count(); yylval.gt =create_tree(":",0,yylineno);return(':'); }
"="			{ count(); yylval.gt =create_tree("=",0,yylineno);return('='); }
"("			{ count(); yylval.gt =create_tree("(",0,yylineno);return('('); }
")"			{ count(); yylval.gt =create_tree(")",0,yylineno);return(')'); }
"["			{ count(); yylval.gt =create_tree("[",0,yylineno);return('['); }
"]"			{ count(); yylval.gt =create_tree("]",0,yylineno);return(']'); }
"."			{ count(); yylval.gt =create_tree(".",0,yylineno);return('.'); }
"&"			{ count(); yylval.gt =create_tree("&",0,yylineno);return('&'); }
"!"			{ count(); yylval.gt =create_tree("!",0,yylineno);return('!'); }
"~"			{ count(); yylval.gt =create_tree("~",0,yylineno);return('~'); }
"-"			{ count(); yylval.gt =create_tree("-",0,yylineno);return('-'); }
"+"			{ count(); yylval.gt =create_tree("+",0,yylineno);return('+'); }
"*"			{ count(); yylval.gt =create_tree("*",0,yylineno);return('*'); }
"/"			{ count(); yylval.gt =create_tree("/",0,yylineno);return('/'); }
"%"			{ count(); yylval.gt =create_tree("%",0,yylineno);return('%'); }
"<"			{ count(); yylval.gt =create_tree("<",0,yylineno);return('<'); }
">"			{ count(); yylval.gt =create_tree(">",0,yylineno);return('>'); }
"^"			{ count(); yylval.gt =create_tree("^",0,yylineno);return('^'); }
"|"			{ count(); yylval.gt =create_tree("|",0,yylineno);return('|'); }
"?"			{ count(); yylval.gt =create_tree("?",0,yylineno);return('?'); }

[ \t\v\n\f]		{ count(); }
.			{ }

%%

int yywrap() {
	return 1;
}


void comment() {
	column = 0;
	char c, prev = 0;
	
	while (cin >> c)      
	{
		if (c == '/' && prev == '*')
			return;
		prev = c;
	}
	printf("unterminated comment");
}



void count(void)
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


int check_type() {
	if (yytext == type_name)
		return(TYPE_NAME);
	return IDENTIFIER;
}