%{
#include <stdlib.h>
#include <stdio.h>
#include "../Tree/tree.h"

extern char *yytext;
extern int column;
extern FILE *yyin;
extern FILE *yyout;
GrammarTree *root;
extern int yylineno;

int yylex(void);
void yyerror(const char*);

%}

%union{
	GrammarTree* gt;
}

%token <gt> IDENTIFIER CONSTANT STRING_LITERAL SIZEOF CONSTANT_INT CONSTANT_DOUBLE
%token <gt> PTR_OP INC_OP DEC_OP LEFT_OP RIGHT_OP LE_OP GE_OP EQ_OP NE_OP
%token <gt> AND_OP OR_OP MUL_ASSIGN DIV_ASSIGN MOD_ASSIGN ADD_ASSIGN
%token <gt> SUB_ASSIGN LEFT_ASSIGN RIGHT_ASSIGN AND_ASSIGN
%token <gt> XOR_ASSIGN OR_ASSIGN TYPE_NAME
%token <gt> TYPEDEF EXTERN STATIC AUTO REGISTER
%token <gt> CHAR SHORT INT LONG SIGNED UNSIGNED FLOAT DOUBLE CONST VOLATILE VOID BOOL
%token <gt> STRUCT UNION ENUM ELLIPSIS
%token <gt> CASE DEFAULT IF ELSE SWITCH WHILE DO FOR GOTO CONTINUE BREAK RETURN
%token <gt> TRUE FALSE
%token <gt> ';' ',' ':' '=' '[' ']' '.' '&' '!' '~' '-' '+' '*' '/' '%' '<' '>' '^' '|' '?' '{' '}' '(' ')'


%type <gt> primary_expression postfix_expression argument_expression_list unary_expression unary_operator
%type <gt> cast_expression multiplicative_expression additive_expression shift_expression relational_expression equality_expression
%type <gt> and_expression exclusive_or_expression inclusive_or_expression logical_and_expression logical_or_expression
%type <gt> conditional_expression
%type <gt> assignment_expression assignment_operator expression
%type <gt> constant_expression
%type <gt> declaration declaration_specifiers init_declarator_list init_declarator type_specifier storage_class_specifier
%type <gt> struct_or_union_specifier struct_or_union struct_declaration_list struct_declaration specifier_qualifier_list struct_declarator_list struct_declarator
%type <gt> enum_specifier enumerator_list enumerator type_qualifier
%type <gt> declarator 
%type <gt> direct_declarator pointer type_qualifier_list
%type <gt> parameter_type_list parameter_list parameter_declaration identifier_list
%type <gt> type_name abstract_declarator direct_abstract_declarator initializer initializer_list 
%type <gt> expression_statement statement labeled_statement compound_statement declaration_list statement_list 
%type <gt> selection_statement iteration_statement jump_statement translation_unit external_declaration function_definition

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

%%

Program: 
	translation_unit {
		root = createTree(PROGRAM,1,$1);
	}
	;

primary_expression:
	  IDENTIFIER {
		$$ = createTree(PRIMARY_EXPRESSION,1,$1);
	}
	| TRUE {
		$$ = createTree(PRIMARY_EXPRESSION,1,$1);
	}
	| FALSE {
		$$ = createTree(PRIMARY_EXPRESSION,1,$1);
	}
	| CONSTANT_INT {
		$$ = createTree(PRIMARY_EXPRESSION,1,$1);		
	}
	| CONSTANT_DOUBLE {
		$$ = createTree(PRIMARY_EXPRESSION,1,$1);
	}
	| '(' expression ')'{
		$$ = createTree(PRIMARY_EXPRESSION,3,$1,$2,$3);
	}
	| STRING_LITERAL{
		$$ = createTree(PRIMARY_EXPRESSION,1,$1);
	}
	;

postfix_expression:
      primary_expression{
		$$ = createTree(POSTFIX_EXPRESSION,1,$1);
	}
	| postfix_expression '[' expression ']'{
		$$ = createTree(POSTFIX_EXPRESSION,4,$1,$2,$3,$4);
	}
	| postfix_expression '(' ')'{
		$$ = createTree(POSTFIX_EXPRESSION,3,$1,$2,$3);
	}
	| postfix_expression '(' argument_expression_list ')'{
		$$ = createTree(POSTFIX_EXPRESSION,4,$1,$2,$3,$4);
	}
	| postfix_expression '.' IDENTIFIER
	{
		$$ = createTree(POSTFIX_EXPRESSION,3,$1,$2,$3);
	}
	| postfix_expression PTR_OP IDENTIFIER{
		$$ = createTree(POSTFIX_EXPRESSION,3,$1,$2,$3);
	}
	| postfix_expression INC_OP{
		$$ = createTree(POSTFIX_EXPRESSION,2,$1,$2);
	}
	| postfix_expression DEC_OP{
		$$ = createTree(POSTFIX_EXPRESSION,2,$1,$2);
	}
	;

argument_expression_list:
      assignment_expression{
		$$ = createTree(ARGUMENT_EXPRESSION_LIST,1,$1);
	}
	| argument_expression_list ',' assignment_expression{
		$$ = createTree(ARGUMENT_EXPRESSION_LIST,3,$1,$2,$3);
	}
	;

unary_expression:
      postfix_expression{
		$$ = createTree(UNARY_EXPRESSION,1,$1);
	}
	| INC_OP unary_expression{
		$$ = createTree(UNARY_EXPRESSION,2,$1,$2);
	}
	| DEC_OP unary_expression{
		$$ = createTree(UNARY_EXPRESSION,2,$1,$2);
	}
	| unary_operator cast_expression{
		$$ = createTree(UNARY_EXPRESSION,2,$1,$2);
	}
	| SIZEOF unary_expression{
		$$ = createTree(UNARY_EXPRESSION,2,$1,$2);
	}
	| SIZEOF '(' type_name ')'{
		$$ = createTree(UNARY_EXPRESSION,4,$1,$2,$3,$4);
	}
	;

unary_operator:
      '&'{
		$$ = createTree(UNARY_OPERATOR,1,$1);
	}
	| '*'{
		$$ = createTree(UNARY_OPERATOR,1,$1);
	}
	| '+'{
		$$ = createTree(UNARY_OPERATOR,1,$1);
	}
	| '-'{
		$$ = createTree(UNARY_OPERATOR,1,$1);
	}
	| '~'{
		$$ = createTree(UNARY_OPERATOR,1,$1);
	}
	| '!'{
		$$ = createTree(UNARY_OPERATOR,1,$1);
	}
	;

cast_expression:
      unary_expression{
		$$ = createTree(CAST_EXPRESSION,1,$1);
	}
	| '(' type_name ')' cast_expression{
		$$ = createTree(CAST_EXPRESSION,4,$1,$2,$3,$4);
	}
	;

multiplicative_expression:
      cast_expression{
		$$ = createTree(MULTIPLICATIVE_EXPRESSION,1,$1);
	}
	| multiplicative_expression '*' cast_expression{
		$$ = createTree(MULTIPLICATIVE_EXPRESSION,3,$1,$2,$3);
	}
	| multiplicative_expression '/' cast_expression{
		$$ = createTree(MULTIPLICATIVE_EXPRESSION,3,$1,$2,$3);
	}
	| multiplicative_expression '%' cast_expression{
		$$ = createTree(MULTIPLICATIVE_EXPRESSION,3,$1,$2,$3);
	}
	;

additive_expression:
      multiplicative_expression{
		$$ = createTree(ADDITIVE_EXPRESSION,1,$1);
	}
	| additive_expression '+' multiplicative_expression{
		$$ = createTree(ADDITIVE_EXPRESSION,3,$1,$2,$3);
	}
	| additive_expression '-' multiplicative_expression{
		$$ = createTree(ADDITIVE_EXPRESSION,3,$1,$2,$3);
	}
	;

shift_expression:
      additive_expression{
		$$ = createTree(SHIFT_EXPRESSION,1,$1);
	}
	| shift_expression LEFT_OP additive_expression{
		$$ = createTree(SHIFT_EXPRESSION,3,$1,$2,$3);
	}
	| shift_expression RIGHT_OP additive_expression{
		$$ = createTree(SHIFT_EXPRESSION,3,$1,$2,$3);
	}
	;

relational_expression:
      shift_expression{
		$$ = createTree(RELATIONAL_EXPRESSION,1,$1);
	}
	| relational_expression '<' shift_expression{
		$$ = createTree(RELATIONAL_EXPRESSION,3,$1,$2,$3);
	}
	| relational_expression '>' shift_expression{
		$$ = createTree(RELATIONAL_EXPRESSION,3,$1,$2,$3);
	}
	| relational_expression LE_OP shift_expression{
		$$ = createTree(RELATIONAL_EXPRESSION,3,$1,$2,$3);
	}
	| relational_expression GE_OP shift_expression{
		$$ = createTree(RELATIONAL_EXPRESSION,3,$1,$2,$3);
	}
	;

equality_expression:
      relational_expression{
		$$ = createTree(EQUALITY_EXPRESSION,1,$1);
	}
	| equality_expression EQ_OP relational_expression{
		$$ = createTree(EQUALITY_EXPRESSION,3,$1,$2,$3);
	}
	| equality_expression NE_OP relational_expression{
		$$ = createTree(EQUALITY_EXPRESSION,3,$1,$2,$3);
	}
	;

and_expression:
      equality_expression{
		$$ = createTree(AND_EXPRESSION,1,$1);
	}
	| and_expression '&' equality_expression{
		$$ = createTree(AND_EXPRESSION,3,$1,$2,$3);
	}
	;

exclusive_or_expression:
      and_expression{
		$$ = createTree(EXCLUSIVE_OR_EXPRESSION,1,$1);
	}
	| exclusive_or_expression '^' and_expression{
		$$ = createTree(EXCLUSIVE_OR_EXPRESSION,3,$1,$2,$3);
	}
	;

inclusive_or_expression:
      exclusive_or_expression{
		$$ = createTree(INCLUSIVE_OR_EXPRESSION,1,$1);
	}
	| inclusive_or_expression '|' exclusive_or_expression{
		$$ = createTree(INCLUSIVE_OR_EXPRESSION,3,$1,$2,$3);
	}
	;

logical_and_expression:
      inclusive_or_expression{
		$$ = createTree(LOGICAL_AND_EXPRESSION,1,$1);
	}
	| logical_and_expression AND_OP inclusive_or_expression{
		$$ = createTree(LOGICAL_AND_EXPRESSION,3,$1,$2,$3);
	}
    ;
    
logical_or_expression:
      logical_and_expression{
		$$ = createTree(LOGICAL_OR_EXPRESSION,1,$1);
	}
	| logical_or_expression OR_OP logical_and_expression{
		$$ = createTree(LOGICAL_OR_EXPRESSION,3,$1,$2,$3);
	}
	;

conditional_expression:
      logical_or_expression{
		$$ = createTree(CONDITIONAL_EXPRESSION,1,$1);
	}
	| logical_or_expression '?' expression ':' conditional_expression{
		$$ = createTree(CONDITIONAL_EXPRESSION,5,$1,$2,$3,$4,$5);
	}
	;

assignment_expression:
      conditional_expression{
		$$ = createTree(ASSIGNMENT_EXPRESSION,1,$1);
	}
	| unary_expression assignment_operator assignment_expression{
		$$ = createTree(ASSIGNMENT_EXPRESSION,3,$1,$2,$3);
	}
	;

assignment_operator:
      '='{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| MUL_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| DIV_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| MOD_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| ADD_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| SUB_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| LEFT_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| RIGHT_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| AND_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| XOR_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	| OR_ASSIGN{
		$$ = createTree(ASSIGNMENT_OPERATOR,1,$1);
	}
	;

expression:
      assignment_expression{
		$$ = createTree(EXPRESSION,1,$1);
	}
	| expression ',' assignment_expression{
		$$ = createTree(EXPRESSION,3,$1,$2,$3);
	}
	;

constant_expression:
      conditional_expression{
		$$ = createTree(CONSTANT_EXPRESSION,1,$1);
	}
	;

declaration:
      declaration_specifiers ';'{
		$$ = createTree(DECLARATION,2,$1,$2);
	}
	| declaration_specifiers init_declarator_list ';'{
		$$ = createTree(DECLARATION,3,$1,$2,$3);
	}
	;

declaration_specifiers:
      storage_class_specifier{
		$$ = createTree(DECLARATION_SPECIFIERS,1,$1);
	}
	| storage_class_specifier declaration_specifiers{
		$$ = createTree(DECLARATION_SPECIFIERS,2,$1,$2);
	}
	| type_specifier{
		$$ = createTree(DECLARATION_SPECIFIERS,1,$1);
	}
	| type_specifier declaration_specifiers{
		$$ = createTree(DECLARATION_SPECIFIERS,2,$1,$2);
	}
	| type_qualifier{
		$$ = createTree(DECLARATION_SPECIFIERS,1,$1);
	}
	| type_qualifier declaration_specifiers{
		$$ = createTree(DECLARATION_SPECIFIERS,2,$1,$2);
	}
	;

init_declarator_list:
      init_declarator{
		$$ = createTree(INIT_DECLARATOR_LIST,1,$1);
	}
	| init_declarator_list ',' init_declarator{
		$$ = createTree(INIT_DECLARATOR_LIST,3,$1,$2,$3);
	}
	;

init_declarator:
      declarator{
		$$ = createTree(INIT_DECLARATOR,1,$1);
	}
	| declarator '=' initializer{
		$$ = createTree(INIT_DECLARATOR,3,$1,$2,$3);
	}
	;

storage_class_specifier:
      TYPEDEF{
		$$ = createTree(STORAGE_CLASS_SPECIFIER,1,$1);
	}
	| EXTERN{
		$$ = createTree(STORAGE_CLASS_SPECIFIER,1,$1);
	}
	| STATIC{
		$$ = createTree(STORAGE_CLASS_SPECIFIER,1,$1);
	}
	| AUTO{
		$$ = createTree(STORAGE_CLASS_SPECIFIER,1,$1);
	}
	| REGISTER{
		$$ = createTree(STORAGE_CLASS_SPECIFIER,1,$1);
	}
	;

type_specifier:
      VOID{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| CHAR{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| SHORT{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| INT{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| LONG{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| FLOAT{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| DOUBLE{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| SIGNED{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| UNSIGNED{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| struct_or_union_specifier{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| enum_specifier{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| TYPE_NAME{
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	| BOOL {
		$$ = createTree(TYPE_SPECIFIER,1,$1);
	}
	;

struct_or_union_specifier:
      struct_or_union IDENTIFIER '{' struct_declaration_list '}'{
		$$ = createTree(TYPE_SPECIFIER,5,$1,$2,$3,$4,$5);
	}
	| struct_or_union '{' struct_declaration_list '}'{
		$$ = createTree(TYPE_SPECIFIER,4,$1,$2,$3,$4);
	}
	| struct_or_union IDENTIFIER{
		$$ = createTree(TYPE_SPECIFIER,2,$1,$2);
	}
	;

struct_or_union:
      STRUCT{
		$$ = createTree(STRUCT_OR_UNION,1,$1);
	}
	| UNION{
		$$ = createTree(STRUCT_OR_UNION,1,$1);
	}
	;

struct_declaration_list:
      struct_declaration{
		$$ = createTree(STRUCT_DECLARATION_LIST,1,$1);
	}
	| struct_declaration_list struct_declaration{
		$$ = createTree(STRUCT_DECLARATION_LIST,2,$1,$2);
	}
	;

struct_declaration:
      specifier_qualifier_list struct_declarator_list ';'{
		$$ = createTree(STRUCT_DECLARATION,3,$1,$2,$3);
	}
	;

specifier_qualifier_list:
      type_specifier specifier_qualifier_list{
		$$ = createTree(SPECIFIER_QUALIFIER_LIST,2,$1,$2);
	}
	| type_specifier{
		$$ = createTree(SPECIFIER_QUALIFIER_LIST,1,$1);
	}
	| type_qualifier specifier_qualifier_list{
		$$ = createTree(SPECIFIER_QUALIFIER_LIST,2,$1,$2);
	}
	| type_qualifier{
		$$ = createTree(SPECIFIER_QUALIFIER_LIST,1,$1);
	}
	;

struct_declarator_list:
      struct_declarator{
		$$ = createTree(STRUCT_DECLARATOR_LIST,1,$1);
	}
	| struct_declarator_list ',' struct_declarator{
		$$ = createTree(STRUCT_DECLARATOR_LIST,3,$1,$2,$3);
	}
	;

struct_declarator:
      declarator{
		$$ = createTree(STRUCT_DECLARATOR,1,$1);
	}
	| ':' constant_expression{
		$$ = createTree(STRUCT_DECLARATOR,2,$1,$2);
	}
	| declarator ':' constant_expression{
		$$ = createTree(STRUCT_DECLARATOR,3,$1,$2,$3);
	}
	;

enum_specifier:
      ENUM '{' enumerator_list '}'{
		$$ = createTree(ENUM_SPECIFIER,4,$1,$2,$3,$4);
	}
	| ENUM IDENTIFIER '{' enumerator_list '}'{
		$$ = createTree(ENUM_SPECIFIER,5,$1,$2,$3,$4,$5);
	}
	| ENUM IDENTIFIER
	{
		$$ = createTree(ENUM_SPECIFIER,2,$1,$2);
	}
	;

enumerator_list:
      enumerator{
		$$ = createTree(ENUMERATOR_LIST,1,$1);
	}
	| enumerator_list ',' enumerator{
		$$ = createTree(ENUMERATOR_LIST,3,$1,$2,$3);
	}
	;

enumerator:
      IDENTIFIER{
		$$ = createTree(ENUMERATOR,1,$1);
	}
	| IDENTIFIER '=' constant_expression{
		$$ = createTree(ENUMERATOR,3,$1,$2,$3);
	}
	;

type_qualifier:
      CONST{
		$$ = createTree(TYPE_QUALIFIER,1,$1);
	}
	| VOLATILE{
		$$ = createTree(TYPE_QUALIFIER,1,$1);
	}
	;

declarator:
      pointer direct_declarator{
		$$ = createTree(DECLARATOR,2,$1,$2);
	}
	| direct_declarator{
		$$ = createTree(DECLARATOR,1,$1);
	}
	;

direct_declarator:
      IDENTIFIER{
		$$ = createTree(DIRECT_DECLARATOR,1,$1);
	}
	| '(' declarator ')'{
		$$ = createTree(DIRECT_DECLARATOR,3,$1,$2,$3);
	}
	| direct_declarator '[' constant_expression ']'{
		$$ = createTree(DIRECT_DECLARATOR,4,$1,$2,$3,$4);
	}
	| direct_declarator '[' ']'{
		$$ = createTree(DIRECT_DECLARATOR,3,$1,$2,$3);
	}
	| direct_declarator '(' parameter_type_list ')'{
		$$ = createTree(DIRECT_DECLARATOR,4,$1,$2,$3,$4);
	}
	| direct_declarator '(' identifier_list ')'{
		$$ = createTree(DIRECT_DECLARATOR,4,$1,$2,$3,$4);
	}
	| direct_declarator '(' ')'{
		$$ = createTree(DIRECT_DECLARATOR,3,$1,$2,$3);
	}
	;

pointer:
      '*'{
		$$ = createTree(POINTER,1,$1);
	}
	| '*' type_qualifier_list{
		$$ = createTree(POINTER,2,$1,$2);
	}
	| '*' pointer{
		$$ = createTree(POINTER,2,$1,$2);
	}
	| '*' type_qualifier_list pointer{
		$$ = createTree(POINTER,3,$1,$2,$3);
	}
	;

type_qualifier_list:
      type_qualifier{
		$$ = createTree(TYPE_QUALIFIER_LIST,1,$1);
	}
	| type_qualifier_list type_qualifier{
		$$ = createTree(TYPE_QUALIFIER_LIST,2,$1,$2);
	}
	;


parameter_type_list:
      parameter_list{
		$$ = createTree(PARAMETER_TYPE_LIST,1,$1);
	}
	| parameter_list ',' ELLIPSIS{
		$$ = createTree(PARAMETER_TYPE_LIST,3,$1,$2,$3);
	}
	;

parameter_list:
      parameter_declaration{
		$$ = createTree(PARAMETER_LIST,1,$1);
	}
	| parameter_list ',' parameter_declaration{
		$$ = createTree(PARAMETER_LIST,3,$1,$2,$3);
	}
	;

parameter_declaration:
      declaration_specifiers declarator{
		$$ = createTree(PARAMETER_DECLARATION,2,$1,$2);
	}
	| declaration_specifiers abstract_declarator{
		$$ = createTree(PARAMETER_DECLARATION,2,$1,$2);
	}
	| declaration_specifiers{
		$$ = createTree(PARAMETER_DECLARATION,1,$1);
	}
	;

identifier_list:
      IDENTIFIER{
		$$ = createTree(IDENTIFIER_LIST,1,$1);
	}
	| identifier_list ',' IDENTIFIER{
		$$ = createTree(IDENTIFIER_LIST,3,$1,$2,$3);
	}
	;

type_name:
      specifier_qualifier_list{
		$$ = createTree(TYPE,1,$1);
	}
	| specifier_qualifier_list abstract_declarator{
		$$ = createTree(TYPE,2,$1,$2);
	}
	;

abstract_declarator:
      pointer{
		$$ = createTree(ABSTRACT_DECLARATOR,1,$1);
	}
	| direct_abstract_declarator{
		$$ = createTree(ABSTRACT_DECLARATOR,1,$1);
	}
	| pointer direct_abstract_declarator{
		$$ = createTree(ABSTRACT_DECLARATOR,2,$1,$2);
	}
	;

direct_abstract_declarator:
      '(' abstract_declarator ')'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,3,$1,$2,$3);
	}
	| '[' ']'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,2,$1,$2);
	}
	| '[' constant_expression ']'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,3,$1,$2,$3);
	}
	| direct_abstract_declarator '[' ']'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,3,$1,$2,$3);
	}
	| direct_abstract_declarator '[' constant_expression ']'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,4,$1,$2,$3,$4);
	}
	| '(' ')'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,2,$1,$2);
	}
	| '(' parameter_type_list ')'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,3,$1,$2,$3);
	}
	| direct_abstract_declarator '(' ')'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,3,$1,$2,$3);
	}
	| direct_abstract_declarator '(' parameter_type_list ')'{
		$$ = createTree(DIRECT_ABSTRACT_DECLARATOR,4,$1,$2,$3,$4);
	}
	;

initializer:
      assignment_expression{
		$$ = createTree(INITIALIZER,1,$1);
	}
	| '{' initializer_list '}'{
		$$ = createTree(INITIALIZER,3,$1,$2,$3);
	}
	| '{' initializer_list ',' '}'{
		$$ = createTree(INITIALIZER,4,$1,$2,$3,$4);
	}
	;

initializer_list:
      initializer{
		$$ = createTree(INITIALIZER_LIST,1,$1);
	}
	| initializer_list ',' initializer{
		$$ = createTree(INITIALIZER_LIST,3,$1,$2,$3);
	}
	;

statement:
      labeled_statement{
		$$ = createTree(STATEMENT,1,$1);
	}
	| compound_statement{
		$$ = createTree(STATEMENT,1,$1);
	}
	| expression_statement{
		$$ = createTree(STATEMENT,1,$1);
	}
	| selection_statement{
		$$ = createTree(STATEMENT,1,$1);
	}
	| iteration_statement{
		$$ = createTree(STATEMENT,1,$1);
	}
	| jump_statement{
		$$ = createTree(STATEMENT,1,$1);
	}
	;

labeled_statement:
      IDENTIFIER ':' statement{
		$$ = createTree(LABELED_STATEMENT,3,$1,$2,$3);
	}
	| CASE constant_expression ':' statement{
		$$ = createTree(LABELED_STATEMENT,4,$1,$2,$3,$4);
	}
	| DEFAULT ':' statement{
		$$ = createTree(LABELED_STATEMENT,3,$1,$2,$3);
	}
	;

compound_statement:
      '{' '}'{
		$$ = createTree(COMPOUND_STATEMENT,2,$1,$2);
	}
	| '{' statement_list '}'{
		$$ = createTree(COMPOUND_STATEMENT,3,$1,$2,$3);
	}
	| '{' declaration_list '}'{
		$$ = createTree(COMPOUND_STATEMENT,3,$1,$2,$3);
	}
	| '{' declaration_list statement_list '}'{
		$$ = createTree(COMPOUND_STATEMENT,4,$1,$2,$3,$4);
	}
	;

declaration_list:
      declaration{
		$$ = createTree(DECLARATION_LIST,1,$1);
	}
	| declaration_list declaration{
		$$ = createTree(DECLARATION_LIST,2,$1,$2);
	}
	;

statement_list:
      statement{
		$$ = createTree(STATEMENT_LIST,1,$1);
	}
	| statement_list statement{
		$$ = createTree(STATEMENT_LIST,2,$1,$2);
	}
	;

expression_statement:
      ';'{
		$$ = createTree(EXPRESSION_STATEMENT,1,$1);
	}
	| expression ';'{
		$$ = createTree(EXPRESSION_STATEMENT,2,$1,$2);
	}
	;

selection_statement:
      IF '(' expression ')' statement{
		$$ = createTree(SELECTION_STATEMENT,5,$1,$2,$3,$4,$5);
	}
	| IF '(' expression ')' statement ELSE statement{
		$$ = createTree(SELECTION_STATEMENT,7,$1,$2,$3,$4,$5,$6,$7);
	}
	| SWITCH '(' expression ')' statement{
		$$ = createTree(SELECTION_STATEMENT,5,$1,$2,$3,$4,$5);
	}
	;

iteration_statement:
      WHILE '(' expression ')' statement{
		$$ = createTree(ITERATION_STATEMENT,5,$1,$2,$3,$4,$5);
	}
	| DO statement WHILE '(' expression ')' ';'{
		$$ = createTree(ITERATION_STATEMENT,7,$1,$2,$3,$4,$5,$6,$7);
	}
	| FOR '(' expression_statement expression_statement ')' statement{
		$$ = createTree(ITERATION_STATEMENT,6,$1,$2,$3,$4,$5,$6);
	}
	| FOR '(' expression_statement expression_statement expression ')' statement{
		$$ = createTree(ITERATION_STATEMENT,7,$1,$2,$3,$4,$5,$6,$7);
	}
	;

jump_statement:
      GOTO IDENTIFIER ';'{
		$$ = createTree(JUMP_STATEMENT,2,$1,$2);
	}
	| CONTINUE ';'{
		$$ = createTree(JUMP_STATEMENT,2,$1,$2);
	}
	| BREAK ';'{
		$$ = createTree(JUMP_STATEMENT,2,$1,$2);
	}
	| RETURN ';'{
		$$ = createTree(JUMP_STATEMENT,2,$1,$2);
	}
	| RETURN expression ';'{
		$$ = createTree(JUMP_STATEMENT,3,$1,$2,$3);
	}
	;

translation_unit:
      external_declaration{
		$$ = createTree(TRANSLATION_UNIT,1,$1);
	}
	| translation_unit external_declaration{
		$$ = createTree(TRANSLATION_UNIT,2,$1,$2);
	}
	;

external_declaration:
      function_definition{
		$$ = createTree(EXTERNAL_DECLARATION,1,$1);
	}
	| declaration{
		$$ = createTree(EXTERNAL_DECLARATION,1,$1);
	}
	;

function_definition:
      declaration_specifiers declarator declaration_list compound_statement{
		$$ = createTree(FUNCTION_DEFINITION,4,$1,$2,$3,$4);
	}
	| declaration_specifiers declarator compound_statement{
		$$ = createTree(FUNCTION_DEFINITION,3,$1,$2,$3);
	}
	| declarator declaration_list compound_statement{
		$$ = createTree(FUNCTION_DEFINITION,3,$1,$2,$3);
	}
	| declarator compound_statement{
		$$ = createTree(FUNCTION_DEFINITION,2,$1,$2);
	}
	;

%%

void yyerror(char const *s)
{
	fflush(stdout);
	printf("\n%*s\n%*s\n", column, "^", column, s);
}
