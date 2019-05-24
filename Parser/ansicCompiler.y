%{
#include <cstdlib>
#include <cstdio>
#include <string>
#include "tree.h"
#include "block.h"
using namespace std;

extern char *yytext;
extern int column;
extern FILE * yyin;
extern FILE * yyout;
gramTree *root;
extern int yylineno;

int yylex(void);
void yyerror(const char*); 
%}

%union{
	struct gramTree* gt;
}

%token <gt> IDENTIFIER CONSTANT STRING_LITERAL SIZEOF CONSTANT_INT CONSTANT_DOUBLE
%token <gt> PTR_OP INC_OP DEC_OP LEFT_OP RIGHT_OP LE_OP GE_OP EQ_OP NE_OP
%token <gt> AND_OP OR_OP MUL_ASSIGN DIV_ASSIGN MOD_ASSIGN ADD_ASSIGN
%token <gt> SUB_ASSIGN LEFT_ASSIGN RIGHT_ASSIGN AND_ASSIGN
%token <gt> XOR_ASSIGN OR_ASSIGN TYPE_NAME
%token TYPEDEF EXTERN STATIC AUTO REGISTER
%token CHAR SHORT INT LONG SIGNED UNSIGNED FLOAT DOUBLE CONST VOLATILE VOID BOOL
%token STRUCT UNION ENUM ELLIPSIS
%token CASE DEFAULT IF ELSE SWITCH WHILE DO FOR GOTO CONTINUE BREAK RETURN
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
%type <gt> expression_statement statement labeled_statement compound_statement declaration_list statement_list expression_statement
%type <gt> selection_statement iteration_statement jump_statement translation_unit external_declaration function_definition


%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE
%%


Program: 
	translation_unit {
		root = create_tree("Program",1,$1);
	}
	;

primary_expression:
	IDENTIFIER {
		$$ = create_tree("primary_expression",1,$1);
	}
	|
	TRUE {
		$$ = create_tree("primary_expression",1,$1);
	}
	|
	FALSE {
		$$ = create_tree("primary_expression",1,$1);
	}
	| CONSTANT_INT {
		$$ = create_tree("primary_expression",1,$1);		
	}
	| CONSTANT_DOUBLE {
		$$ = create_tree("primary_expression",1,$1);
	}
	| '(' expression ')'{
		$$ = create_tree("primary_expression",3,$1,$2,$3);
	}
	;

postfix_expression
	: primary_expression{
		$$ = create_tree("postfix_expression",1,$1);
	}
	| postfix_expression '[' expression ']'{
		$$ = create_tree("postfix_expression",4,$1,$2,$3,$4);
	}
	| postfix_expression '(' ')'{
		$$ = create_tree("postfix_expression",3,$1,$2,$3);
	}
	| postfix_expression '(' argument_expression_list ')'{
		$$ = create_tree("postfix_expression",4,$1,$2,$3,$4);
	}
	| postfix_expression '.' IDENTIFIER
	{
		$$ = create_tree("postfix_expression",3,$1,$2,$3);
	}
	| postfix_expression PTR_OP IDENTIFIER{
		$$ = create_tree("postfix_expression",3,$1,$2,$3);
	}
	| postfix_expression INC_OP{
		$$ = create_tree("postfix_expression",2,$1,$2);
	}
	| postfix_expression DEC_OP{
		$$ = create_tree("postfix_expression",2,$1,$2);
	}
	;

argument_expression_list
	: assignment_expression{
		$$ = create_tree("argument_expression_list",1,$1);
	}
	| argument_expression_list ',' assignment_expression{
		$$ = create_tree("argument_expression_list",3,$1,$2,$3);
	}
	;

unary_expression
	: postfix_expression{
		$$ = create_tree("unary_expression",1,$1);
	}
	| INC_OP unary_expression{
		$$ = create_tree("unary_expression",2,$1,$2);
	}
	| DEC_OP unary_expression{
		$$ = create_tree("unary_expression",2,$1,$2);
	}
	| unary_operator cast_expression{
		$$ = create_tree("unary_expression",2,$1,$2);
	}
	| SIZEOF unary_expression{
		$$ = create_tree("unary_expression",2,$1,$2);
	}
	| SIZEOF '(' type_name ')'{
		$$ = create_tree("unary_expression",4,$1,$2,$3,$4);
	}
	;

unary_operator
	: '&'{
		$$ = create_tree("unary_operator",1,$1);
	}
	| '*'{
		$$ = create_tree("unary_operator",1,$1);
	}
	| '+'{
		$$ = create_tree("unary_operator",1,$1);
	}
	| '-'{
		$$ = create_tree("unary_operator",1,$1);
	}
	| '~'{
		$$ = create_tree("unary_operator",1,$1);
	}
	| '!'{
		$$ = create_tree("unary_operator",1,$1);
	}
	;

cast_expression
	: unary_expression{
		$$ = create_tree("cast_expression",1,$1);
	}
	| '(' type_name ')' cast_expression{
		$$ = create_tree("cast_expression",4,$1,$2,$3,$4);
	}
	;

multiplicative_expression
	: cast_expression{
		$$ = create_tree("multiplicative_expression",1,$1);
	}
	| multiplicative_expression '*' cast_expression{
		$$ = create_tree("multiplicative_expression",3,$1,$2,$3);
	}
	| multiplicative_expression '/' cast_expression{
		$$ = create_tree("multiplicative_expression",3,$1,$2,$3);
	}
	| multiplicative_expression '%' cast_expression{
		$$ = create_tree("multiplicative_expression",3,$1,$2,$3);
	}
	;

additive_expression
	: multiplicative_expression{
		$$ = create_tree("additive_expression",1,$1);
	}
	| additive_expression '+' multiplicative_expression{
		$$ = create_tree("additive_expression",3,$1,$2,$3);
	}
	| additive_expression '-' multiplicative_expression{
		$$ = create_tree("additive_expression",3,$1,$2,$3);
	}
	;

	shift_expression
	: additive_expression{
		$$ = create_tree("shift_expression",1,$1);
	}
	| shift_expression LEFT_OP additive_expression{
		$$ = create_tree("shift_expression",3,$1,$2,$3);
	}
	| shift_expression RIGHT_OP additive_expression{
		$$ = create_tree("shift_expression",3,$1,$2,$3);
	}
	;

relational_expression
	: shift_expression{
		$$ = create_tree("relational_expression",1,$1);
	}
	| relational_expression '<' shift_expression{
		$$ = create_tree("relational_expression",3,$1,$2,$3);
	}
	| relational_expression '>' shift_expression{
		$$ = create_tree("relational_expression",3,$1,$2,$3);
	}
	| relational_expression LE_OP shift_expression{
		$$ = create_tree("relational_expression",3,$1,$2,$3);
	}
	| relational_expression GE_OP shift_expression{
		$$ = create_tree("relational_expression",3,$1,$2,$3);
	}
	;

equality_expression
	: relational_expression{
		$$ = create_tree("equality_expression",1,$1);
	}
	| equality_expression EQ_OP relational_expression{
		$$ = create_tree("equality_expression",3,$1,$2,$3);
	}
	| equality_expression NE_OP relational_expression{
		$$ = create_tree("equality_expression",3,$1,$2,$3);
	}
	;

and_expression
	: equality_expression{
		$$ = create_tree("and_expression",1,$1);
	}
	| and_expression '&' equality_expression{
		$$ = create_tree("and_expression",3,$1,$2,$3);
	}
	;

exclusive_or_expression
	: and_expression{
		$$ = create_tree("exclusive_or_expression",1,$1);
	}
	| exclusive_or_expression '^' and_expression{
		$$ = create_tree("exclusive_or_expression",3,$1,$2,$3);
	}
	;

inclusive_or_expression
	: exclusive_or_expression{
		$$ = create_tree("inclusive_or_expression",1,$1);
	}
	| inclusive_or_expression '|' exclusive_or_expression{
		$$ = create_tree("inclusive_or_expression",3,$1,$2,$3);
	}
	;

logical_and_expression
	: inclusive_or_expression{
		$$ = create_tree("logical_and_expression",1,$1);
	}
	| logical_and_expression AND_OP inclusive_or_expression{
		$$ = create_tree("logical_and_expression",3,$1,$2,$3);
	}
	;

logical_or_expression
	: logical_and_expression{
		$$ = create_tree("logical_or_expression",1,$1);
	}
	| logical_or_expression OR_OP logical_and_expression{
		$$ = create_tree("logical_or_expression",3,$1,$2,$3);
	}
	;

conditional_expression
	: logical_or_expression{
		$$ = create_tree("conditional_expression",1,$1);
	}
	| logical_or_expression '?' expression ':' conditional_expression{
		$$ = create_tree("conditional_expression",5,$1,$2,$3,$4,$5);
	}
	;

assignment_expression
	: conditional_expression{
		$$ = create_tree("assignment_expression",1,$1);
	}
	| unary_expression assignment_operator assignment_expression{
		$$ = create_tree("assignment_expression",3,$1,$2,$3);
	}
	;

assignment_operator
	: '='{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| MUL_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| DIV_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| MOD_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| ADD_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| SUB_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| LEFT_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| RIGHT_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| AND_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| XOR_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	| OR_ASSIGN{
		$$ = create_tree("assignment_operator",1,$1);
	}
	;

expression
	: assignment_expression{
		$$ = create_tree("expression",1,$1);
	}
	| expression ',' assignment_expression{
		$$ = create_tree("expression",3,$1,$2,$3);
	}
	;

constant_expression
	: conditional_expression{
		$$ = create_tree("constant_expression",1,$1);
	}
	;

declaration
	: declaration_specifiers ';'{
		$$ = create_tree("declaration",2,$1,$2);
	}
	| declaration_specifiers init_declarator_list ';'{
		$$ = create_tree("declaration",3,$1,$2,$3);
	}
	;

declaration_specifiers
	: storage_class_specifier{
		$$ = create_tree("declaration_specifiers",1,$1);
	}
	| storage_class_specifier declaration_specifiers{
		$$ = create_tree("declaration_specifiers",2,$1,$2);
	}
	| type_specifier{
		$$ = create_tree("declaration_specifiers",1,$1);
	}
	| type_specifier declaration_specifiers{
		$$ = create_tree("declaration_specifiers",2,$1,$2);
	}
	| type_qualifier{
		$$ = create_tree("declaration_specifiers",1,$1);
	}
	| type_qualifier declaration_specifiers{
		$$ = create_tree("declaration_specifiers",2,$1,$2);
	}
	;

init_declarator_list
	: init_declarator{
		$$ = create_tree("init_declarator_list",1,$1);
	}
	| init_declarator_list ',' init_declarator{
		$$ = create_tree("init_declarator_list",3,$1,$2,$3);
	}
	;

init_declarator
	: declarator{
		$$ = create_tree("init_declarator",1,$1);
	}
	| declarator '=' initializer{
		$$ = create_tree("init_declarator",3,$1,$2,$3);
	}
	;

storage_class_specifier
	: TYPEDEF{
		$$ = create_tree("storage_class_specifier",1,$1);
	}
	| EXTERN{
		$$ = create_tree("storage_class_specifier",1,$1);
	}
	| STATIC{
		$$ = create_tree("storage_class_specifier",1,$1);
	}
	| AUTO{
		$$ = create_tree("storage_class_specifier",1,$1);
	}
	| REGISTER{
		$$ = create_tree("storage_class_specifier",1,$1);
	}
	;

type_specifier
	: VOID{
		$$ = create_tree("type_specifier",1,$1);
	}
	| CHAR{
		$$ = create_tree("type_specifier",1,$1);
	}
	| SHORT{
		$$ = create_tree("type_specifier",1,$1);
	}
	| INT{
		$$ = create_tree("type_specifier",1,$1);
	}
	| LONG{
		$$ = create_tree("type_specifier",1,$1);
	}
	| FLOAT{
		$$ = create_tree("type_specifier",1,$1);
	}
	| DOUBLE{
		$$ = create_tree("type_specifier",1,$1);
	}
	| SIGNED{
		$$ = create_tree("type_specifier",1,$1);
	}
	| UNSIGNED{
		$$ = create_tree("type_specifier",1,$1);
	}
	| struct_or_union_specifier{
		$$ = create_tree("type_specifier",1,$1);
	}
	| enum_specifier{
		$$ = create_tree("type_specifier",1,$1);
	}
	| TYPE_NAME{
		$$ = create_tree("type_specifier",1,$1);
	}
	| BOOL {
		$$ = create_tree("type_specifier",1,$1);
	}
	;

struct_or_union_specifier
	: struct_or_union IDENTIFIER '{' struct_declaration_list '}'{
		$$ = create_tree("type_specifier",5,$1,$2,$3,$4,$5);
	}
	| struct_or_union '{' struct_declaration_list '}'{
		$$ = create_tree("type_specifier",4,$1,$2,$3,$4);
	}
	| struct_or_union IDENTIFIER{
		$$ = create_tree("type_specifier",2,$1,$2);
	}
	;

struct_or_union
	: STRUCT{
		$$ = create_tree("struct_or_union",1,$1);
	}
	| UNION{
		$$ = create_tree("struct_or_union",1,$1);
	}
	;

struct_declaration_list
	: struct_declaration{
		$$ = create_tree("struct_declaration_list",1,$1);
	}
	| struct_declaration_list struct_declaration{
		$$ = create_tree("struct_declaration_list",2,$1,$2);
	}
	;

struct_declaration
	: specifier_qualifier_list struct_declarator_list ';'{
		$$ = create_tree("struct_declaration",3,$1,$2,$3);
	}
	;

specifier_qualifier_list
	: type_specifier specifier_qualifier_list{
		$$ = create_tree("specifier_qualifier_list",2,$1,$2);
	}
	| type_specifier{
		$$ = create_tree("specifier_qualifier_list",1,$1);
	}
	| type_qualifier specifier_qualifier_list{
		$$ = create_tree("specifier_qualifier_list",2,$1,$2);
	}
	| type_qualifier{
		$$ = create_tree("specifier_qualifier_list",1,$1);
	}
	;

struct_declarator_list
	: struct_declarator{
		$$ = create_tree("struct_declarator_list",1,$1);
	}
	| struct_declarator_list ',' struct_declarator{
		$$ = create_tree("struct_declarator_list",3,$1,$2,$3);
	}
	;

struct_declarator
	: declarator{
		$$ = create_tree("struct_declarator",1,$1);
	}
	| ':' constant_expression{
		$$ = create_tree("struct_declarator",2,$1,$2);
	}
	| declarator ':' constant_expression{
		$$ = create_tree("struct_declarator",3,$1,$2,$3);
	}
	;

enum_specifier
	: ENUM '{' enumerator_list '}'{
		$$ = create_tree("enum_specifier",4,$1,$2,$3,$4);
	}
	| ENUM IDENTIFIER '{' enumerator_list '}'{
		$$ = create_tree("enum_specifier",5,$1,$2,$3,$4,$5);
	}
	| ENUM IDENTIFIER
	{
		$$ = create_tree("enum_specifier",2,$1,$2);
	}
	;

enumerator_list
	: enumerator{
		$$ = create_tree("enumerator_list",1,$1);
	}
	| enumerator_list ',' enumerator{
		$$ = create_tree("enumerator_list",3,$1,$2,$3);
	}
	;

enumerator
	: IDENTIFIER{
		$$ = create_tree("enumerator",1,$1);
	}
	| IDENTIFIER '=' constant_expression{
		$$ = create_tree("enumerator",3,$1,$2,$3);
	}
	;

type_qualifier
	: CONST{
		$$ = create_tree("type_qualifier",1,$1);
	}
	| VOLATILE{
		$$ = create_tree("type_qualifier",1,$1);
	}
	;

declarator
	: pointer direct_declarator{
		$$ = create_tree("declarator",2,$1,$2);
	}
	| direct_declarator{
		$$ = create_tree("declarator",1,$1);
	}
	;

direct_declarator
	: IDENTIFIER{
		$$ = create_tree("direct_declarator",1,$1);
	}
	| '(' declarator ')'{
		$$ = create_tree("direct_declarator",3,$1,$2,$3);
	}
	| direct_declarator '[' constant_expression ']'{
		$$ = create_tree("direct_declarator",4,$1,$2,$3,$4);
	}
	| direct_declarator '[' ']'{
		$$ = create_tree("direct_declarator",3,$1,$2,$3);
	}
	| direct_declarator '(' parameter_type_list ')''{
		$$ = create_tree("direct_declarator",4,$1,$2,$3,$4);
	}
	| direct_declarator '(' identifier_list ')''{
		$$ = create_tree("direct_declarator",4,$1,$2,$3,$4);
	}
	| direct_declarator '(' ')'{
		$$ = create_tree("direct_declarator",3,$1,$2,$3);
	}
	;

pointer
	: '*'{
		$$ = create_tree("pointer",1,$1);
	}
	| '*' type_qualifier_list{
		$$ = create_tree("pointer",2,$1,$2);
	}
	| '*' pointer{
		$$ = create_tree("pointer",2,$1,$2);
	}
	| '*' type_qualifier_list pointer{
		$$ = create_tree("pointer",3,$1,$2,$3);
	}
	;

type_qualifier_list
	: type_qualifier{
		$$ = create_tree("type_qualifier_list",1,$1);
	}
	| type_qualifier_list type_qualifier{
		$$ = create_tree("type_qualifier_list",2,$1,$2);
	}
	;


parameter_type_list
	: parameter_list{
		$$ = create_tree("parameter_type_list",1,$1);
	}
	| parameter_list ',' ELLIPSIS{
		$$ = create_tree("parameter_type_list",3,$1,$2,$3);
	}
	;

parameter_list
	: parameter_declaration{
		$$ = create_tree("parameter_list",1,$1);
	}
	| parameter_list ',' parameter_declaration{
		$$ = create_tree("parameter_list",3,$1,$2,$3);
	}
	;

parameter_declaration
	: declaration_specifiers declarator{
		$$ = create_tree("parameter_declaration",2,$1,$2);
	}
	| declaration_specifiers abstract_declarator{
		$$ = create_tree("parameter_declaration",2,$1,$2);
	}
	| declaration_specifiers{
		$$ = create_tree("parameter_declaration",1,$1);
	}
	;

identifier_list
	: IDENTIFIER{
		$$ = create_tree("identifier_list",1,$1);
	}
	| identifier_list ',' IDENTIFIER{
		$$ = create_tree("identifier_list",3,$1,$2,$3);
	}
	;

type_name
	: specifier_qualifier_list{
		$$ = create_tree("type_name",1,$1);
	}
	| specifier_qualifier_list abstract_declarator{
		$$ = create_tree("type_name",2,$1,$2);
	}
	;

abstract_declarator
	: pointer{
		$$ = create_tree("abstract_declarator",1,$1);
	}
	| direct_abstract_declarator{
		$$ = create_tree("abstract_declarator",1,$1);
	}
	| pointer direct_abstract_declarator{
		$$ = create_tree("abstract_declarator",2,$1,$2);
	}
	;

direct_abstract_declarator
	: '(' abstract_declarator ')'{
		$$ = create_tree("direct_abstract_declarator",3,$1,$2,$3);
	}
	| '[' ']'{
		$$ = create_tree("direct_abstract_declarator",2,$1,$2);
	}
	| '[' constant_expression ']'{
		$$ = create_tree("direct_abstract_declarator",3,$1,$2,$3);
	}
	| direct_abstract_declarator '[' ']'{
		$$ = create_tree("direct_abstract_declarator",3,$1,$2,$3);
	}
	| direct_abstract_declarator '[' constant_expression ']'{
		$$ = create_tree("direct_abstract_declarator",4,$1,$2,$3,$4);
	}
	| '(' ')'{
		$$ = create_tree("direct_abstract_declarator",2,$1,$2);
	}
	| '(' parameter_type_list ')'{
		$$ = create_tree("direct_abstract_declarator",3,$1,$2,$3);
	}
	| direct_abstract_declarator '(' ')'{
		$$ = create_tree("direct_abstract_declarator",3,$1,$2,$3);
	}
	| direct_abstract_declarator '(' parameter_type_list ')'{
		$$ = create_tree("direct_abstract_declarator",4,$1,$2,$3,$4);
	}
	;

initializer
	: assignment_expression{
		$$ = create_tree("initializer",1,$1);
	}
	| '{' initializer_list '}'{
		$$ = create_tree("initializer",3,$1,$2,$3);
	}
	| '{' initializer_list ',' '}'{
		$$ = create_tree("initializer",4,$1,$2,$3,$4);
	}
	;

initializer_list
	: initializer{
		$$ = create_tree("initializer_list",1,$1);
	}
	| initializer_list ',' initializer{
		$$ = create_tree("initializer_list",3,$1,$2,$3);
	}
	;

statement
	: labeled_statement{
		$$ = create_tree("statement",1,$1);
	}
	| compound_statement{
		$$ = create_tree("statement",1,$1);
	}
	| expression_statement{
		$$ = create_tree("statement",1,$1);
	}
	| selection_statement{
		$$ = create_tree("statement",1,$1);
	}
	| iteration_statement{
		$$ = create_tree("statement",1,$1);
	}
	| jump_statement{
		$$ = create_tree("statement",1,$1);
	}
	;

labeled_statement
	: IDENTIFIER ':' statement{
		$$ = create_tree("labeled_statement",3,$1,$2,$3);
	}
	| CASE constant_expression ':' statement{
		$$ = create_tree("labeled_statement",4,$1,$2,$3,$4);
	}
	| DEFAULT ':' statement{
		$$ = create_tree("labeled_statement",3,$1,$2,$3);
	}
	;

compound_statement
	: '{' '}'{
		$$ = create_tree("compound_statement",2,$1,$2);
	}
	| '{' statement_list '}'{
		$$ = create_tree("compound_statement",3,$1,$2,$3);
	}
	| '{' declaration_list '}'{
		$$ = create_tree("compound_statement",3,$1,$2,$3);
	}
	| '{' declaration_list statement_list '}'{
		$$ = create_tree("compound_statement",4,$1,$2,$3,$4);
	}
	;

declaration_list
	: declaration{
		$$ = create_tree("declaration_list",1,$1);
	}
	| declaration_list declaration{
		$$ = create_tree("declaration_list",2,$1,$2);
	}
	;

statement_list
	: statement{
		$$ = create_tree("statement_list",1,$1);
	}
	| statement_list statement{
		$$ = create_tree("statement_list",2,$1,$2);
	}
	;

expression_statement
	: ';'{
		$$ = create_tree("expression_statement",1,$1);
	}
	| expression ';'{
		$$ = create_tree("expression_statement",2,$1,$2);
	}
	;

selection_statement
	: IF '(' expression ')' statement{
		$$ = create_tree("selection_statement",5,$1,$2,$3,$4,$5);
	}
	| IF '(' expression ')' statement ELSE statement{
		$$ = create_tree("selection_statement",7,$1,$2,$3,$4,$5,$6,$7);
	}
	| SWITCH '(' expression ')' statement{
		$$ = create_tree("selection_statement",5,$1,$2,$3,$4,$5);
	}
	;

iteration_statement
	: WHILE '(' expression ')' statement{
		$$ = create_tree("iteration_statement",5,$1,$2,$3,$4,$5);
	}
	| DO statement WHILE '(' expression ')' ';'{
		$$ = create_tree("iteration_statement",7,$1,$2,$3,$4,$5,$6,$7);
	}
	| FOR '(' expression_statement expression_statement ')' statement{
		$$ = create_tree("iteration_statement",6,$1,$2,$3,$4,$5,$6);
	}
	| FOR '(' expression_statement expression_statement expression ')' statement{
		$$ = create_tree("iteration_statement",7,$1,$2,$3,$4,$5,$6,$7);
	}
	;

jump_statement
	: GOTO IDENTIFIER ';'{
		$$ = create_tree("jump_statement",2,$1,$2);
	}
	| CONTINUE ';'{
		$$ = create_tree("jump_statement",2,$1,$2);
	}
	| BREAK ';'{
		$$ = create_tree("jump_statement",2,$1,$2);
	}
	| RETURN ';'{
		$$ = create_tree("jump_statement",2,$1,$2);
	}
	| RETURN expression ';'{
		$$ = create_tree("jump_statement",3,$1,$2,$3);
	}
	;

translation_unit
	: external_declaration{
		$$ = create_tree("translation_unit",1,$1);
	}
	| translation_unit external_declaration{
		$$ = create_tree("translation_unit",2,$1,$2);
	}
	;

external_declaration
	: function_definition{
		$$ = create_tree("external_declaration",1,$1);
	}
	| declaration{
		$$ = create_tree("external_declaration",1,$1);
	}
	;

function_definition
	: declaration_specifiers declarator declaration_list compound_statement{
		$$ = create_tree("function_definition",4,$1,$2,$3,$4);
	}
	| declaration_specifiers declarator compound_statement{
		$$ = create_tree("function_definition",3,$1,$2,$3);
	}
	| declarator declaration_list compound_statement{
		$$ = create_tree("function_definition",3,$1,$2,$3);
	}
	| declarator compound_statement{
		$$ = create_tree("function_definition",2,$1,$2);
	}
	;
void yyerror(char const *s)
{
	fflush(stdout);
	printf("\n%*s\n%*s\n", column, "^", column, s);
}


int main(int argc,char* argv[]) {

	yyin = fopen(argv[1],"r");
	yyparse();
	printf("\n");
	eval(root,0);	
	fclose(yyin);
	return 0;
	
}

