/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "Parser/ansicParser.y" /* yacc.c:339  */

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


#line 83 "Parser/ansicParser.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "ansicParser.h".  */
#ifndef YY_YY_PARSER_ANSICPARSER_H_INCLUDED
# define YY_YY_PARSER_ANSICPARSER_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IDENTIFIER = 258,
    CONSTANT = 259,
    STRING_LITERAL = 260,
    SIZEOF = 261,
    CONSTANT_INT = 262,
    CONSTANT_DOUBLE = 263,
    PTR_OP = 264,
    INC_OP = 265,
    DEC_OP = 266,
    LEFT_OP = 267,
    RIGHT_OP = 268,
    LE_OP = 269,
    GE_OP = 270,
    EQ_OP = 271,
    NE_OP = 272,
    AND_OP = 273,
    OR_OP = 274,
    MUL_ASSIGN = 275,
    DIV_ASSIGN = 276,
    MOD_ASSIGN = 277,
    ADD_ASSIGN = 278,
    SUB_ASSIGN = 279,
    LEFT_ASSIGN = 280,
    RIGHT_ASSIGN = 281,
    AND_ASSIGN = 282,
    XOR_ASSIGN = 283,
    OR_ASSIGN = 284,
    TYPE_NAME = 285,
    TYPEDEF = 286,
    EXTERN = 287,
    STATIC = 288,
    AUTO = 289,
    REGISTER = 290,
    CHAR = 291,
    SHORT = 292,
    INT = 293,
    LONG = 294,
    SIGNED = 295,
    UNSIGNED = 296,
    FLOAT = 297,
    DOUBLE = 298,
    CONST = 299,
    VOLATILE = 300,
    VOID = 301,
    BOOL = 302,
    STRUCT = 303,
    UNION = 304,
    ENUM = 305,
    ELLIPSIS = 306,
    CASE = 307,
    DEFAULT = 308,
    IF = 309,
    ELSE = 310,
    SWITCH = 311,
    WHILE = 312,
    DO = 313,
    FOR = 314,
    GOTO = 315,
    CONTINUE = 316,
    BREAK = 317,
    RETURN = 318,
    TRUE = 319,
    FALSE = 320,
    LOWER_THAN_ELSE = 321
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 18 "Parser/ansicParser.y" /* yacc.c:355  */

	GrammarTree* gt;

#line 194 "Parser/ansicParser.c" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_ANSICPARSER_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 211 "Parser/ansicParser.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  46
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1399

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  91
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  65
/* YYNRULES -- Number of rules.  */
#define YYNRULES  216
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  354

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   321

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    74,     2,     2,     2,    80,    73,     2,
      88,    89,    78,    77,    67,    76,    72,    79,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,    68,    66,
      81,    69,    82,    85,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    70,     2,    71,    83,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    86,    84,    87,    75,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    90
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    57,    57,    63,    66,    69,    72,    75,    78,    84,
      87,    90,    93,    96,   100,   103,   106,   112,   115,   121,
     124,   127,   130,   133,   136,   142,   145,   148,   151,   154,
     157,   163,   166,   172,   175,   178,   181,   187,   190,   193,
     199,   202,   205,   211,   214,   217,   220,   223,   229,   232,
     235,   241,   244,   250,   253,   259,   262,   268,   271,   277,
     280,   286,   289,   295,   298,   304,   307,   310,   313,   316,
     319,   322,   325,   328,   331,   334,   340,   343,   349,   355,
     358,   364,   367,   370,   373,   376,   379,   385,   388,   394,
     397,   403,   406,   409,   412,   415,   421,   424,   427,   430,
     433,   436,   439,   442,   445,   448,   451,   454,   457,   463,
     466,   469,   475,   478,   484,   487,   493,   499,   502,   505,
     508,   514,   517,   523,   526,   529,   535,   538,   541,   548,
     551,   557,   560,   566,   569,   575,   578,   584,   587,   590,
     593,   596,   599,   602,   608,   611,   614,   617,   623,   626,
     633,   636,   642,   645,   651,   654,   657,   663,   666,   672,
     675,   681,   684,   687,   693,   696,   699,   702,   705,   708,
     711,   714,   717,   723,   726,   729,   735,   738,   744,   747,
     750,   753,   756,   759,   765,   768,   771,   777,   780,   783,
     786,   792,   795,   801,   804,   810,   813,   819,   822,   825,
     831,   834,   837,   840,   846,   849,   852,   855,   858,   864,
     867,   873,   876,   882,   885,   888,   891
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "CONSTANT",
  "STRING_LITERAL", "SIZEOF", "CONSTANT_INT", "CONSTANT_DOUBLE", "PTR_OP",
  "INC_OP", "DEC_OP", "LEFT_OP", "RIGHT_OP", "LE_OP", "GE_OP", "EQ_OP",
  "NE_OP", "AND_OP", "OR_OP", "MUL_ASSIGN", "DIV_ASSIGN", "MOD_ASSIGN",
  "ADD_ASSIGN", "SUB_ASSIGN", "LEFT_ASSIGN", "RIGHT_ASSIGN", "AND_ASSIGN",
  "XOR_ASSIGN", "OR_ASSIGN", "TYPE_NAME", "TYPEDEF", "EXTERN", "STATIC",
  "AUTO", "REGISTER", "CHAR", "SHORT", "INT", "LONG", "SIGNED", "UNSIGNED",
  "FLOAT", "DOUBLE", "CONST", "VOLATILE", "VOID", "BOOL", "STRUCT",
  "UNION", "ENUM", "ELLIPSIS", "CASE", "DEFAULT", "IF", "ELSE", "SWITCH",
  "WHILE", "DO", "FOR", "GOTO", "CONTINUE", "BREAK", "RETURN", "TRUE",
  "FALSE", "';'", "','", "':'", "'='", "'['", "']'", "'.'", "'&'", "'!'",
  "'~'", "'-'", "'+'", "'*'", "'/'", "'%'", "'<'", "'>'", "'^'", "'|'",
  "'?'", "'{'", "'}'", "'('", "')'", "LOWER_THAN_ELSE", "$accept",
  "Program", "primary_expression", "postfix_expression",
  "argument_expression_list", "unary_expression", "unary_operator",
  "cast_expression", "multiplicative_expression", "additive_expression",
  "shift_expression", "relational_expression", "equality_expression",
  "and_expression", "exclusive_or_expression", "inclusive_or_expression",
  "logical_and_expression", "logical_or_expression",
  "conditional_expression", "assignment_expression", "assignment_operator",
  "expression", "constant_expression", "declaration",
  "declaration_specifiers", "init_declarator_list", "init_declarator",
  "storage_class_specifier", "type_specifier", "struct_or_union_specifier",
  "struct_or_union", "struct_declaration_list", "struct_declaration",
  "specifier_qualifier_list", "struct_declarator_list",
  "struct_declarator", "enum_specifier", "enumerator_list", "enumerator",
  "type_qualifier", "declarator", "direct_declarator", "pointer",
  "type_qualifier_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "identifier_list", "type_name",
  "abstract_declarator", "direct_abstract_declarator", "initializer",
  "initializer_list", "statement", "labeled_statement",
  "compound_statement", "declaration_list", "statement_list",
  "expression_statement", "selection_statement", "iteration_statement",
  "jump_statement", "translation_unit", "external_declaration",
  "function_definition", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,    59,    44,    58,    61,
      91,    93,    46,    38,    33,   126,    45,    43,    42,    47,
      37,    60,    62,    94,   124,    63,   123,   125,    40,    41,
     321
};
# endif

#define YYPACT_NINF -223

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-223)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     738,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,
    -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,
    -223,  -223,    38,   -31,    53,    24,  -223,    52,  1349,  1349,
    -223,    39,  -223,  1349,  1292,   -62,     8,   738,  -223,  -223,
     -71,    33,  -223,  -223,   -31,   -38,  -223,  -223,   158,  -223,
    1235,  -223,  -223,   -23,  1210,  -223,   403,  -223,    52,  -223,
    1292,   831,   339,   -62,  -223,    33,    48,    -8,  -223,  -223,
    -223,  -223,  -223,    53,   872,  -223,  1292,  1210,  1210,   554,
    -223,    35,  1210,    34,  1015,  -223,  -223,  1021,  1021,  1037,
      77,    93,    96,   103,   747,   128,   150,   152,   155,   878,
    -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,
     575,  -223,   185,   487,  1037,  -223,    69,   153,   224,     7,
     225,   166,   160,   142,   233,   -16,  -223,  -223,   179,  -223,
    -223,  -223,   489,   623,  -223,  -223,  -223,  -223,   187,  -223,
    -223,  -223,  -223,  -223,  -223,   193,  -223,  -223,    49,   200,
     201,  -223,   -13,    55,  1037,    33,  -223,  -223,   872,  -223,
    -223,  -223,  1177,  -223,  -223,  -223,  1037,   182,  -223,   203,
    -223,   747,   575,  -223,  1037,  -223,  -223,   206,   747,  1037,
    1037,  1037,   226,   907,   215,  -223,  -223,  -223,   192,    -6,
     109,   205,   292,  -223,  -223,  1037,   293,   202,  -223,  -223,
    -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  -223,  1037,
    -223,  1037,  1037,  1037,  1037,  1037,  1037,  1037,  1037,  1037,
    1037,  1037,  1037,  1037,  1037,  1037,  1037,  1037,  1037,  1037,
    -223,  1037,  -223,   661,  -223,  -223,  -223,   923,   279,  -223,
      20,  -223,   134,  -223,  1313,   294,  -223,  -223,  -223,  -223,
    -223,    65,  -223,  -223,  -223,    35,  1037,  -223,   209,   747,
    -223,    54,    61,    62,   211,   907,  -223,  -223,  -223,  1096,
     147,  -223,  1037,  -223,    -3,  -223,  -223,   122,  -223,  -223,
    -223,  -223,  -223,    69,    69,   153,   153,   224,   224,   224,
     224,     7,     7,   225,   166,   160,   142,   233,   194,  -223,
    -223,  -223,   229,  -223,   213,   214,   134,   999,  1156,  -223,
    -223,  -223,   786,  -223,  -223,  -223,  -223,  -223,   747,   747,
     747,  1037,   327,  -223,  -223,  1037,  -223,  1037,  -223,  -223,
    -223,  -223,   234,  -223,   217,  -223,  -223,   249,  -223,  -223,
     125,   747,   131,  -223,  -223,  -223,  -223,   747,   241,  -223,
     747,  -223,  -223,  -223
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,   137,   107,    91,    92,    93,    94,    95,    97,    98,
      99,   100,   103,   104,   101,   102,   133,   134,    96,   108,
     112,   113,     0,   144,     0,     0,   212,     0,    81,    83,
     105,     0,   106,    85,     0,   136,     0,     2,   209,   211,
     128,     0,   148,   146,   145,     0,     1,    79,     0,    87,
      89,    82,    84,   111,     0,    86,     0,   191,     0,   216,
       0,     0,     0,   135,   210,     0,   131,     0,   129,   149,
     147,   138,    80,     0,     0,   214,     0,     0,   118,     0,
     114,     0,   120,     3,     0,     6,     7,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       4,     5,   195,    25,    30,    29,    28,    27,    26,   187,
       0,     9,    19,    31,     0,    33,    37,    40,    43,    48,
      51,    53,    55,    57,    59,    61,    63,    76,     0,   193,
     178,   179,     0,     0,   180,   181,   182,   183,    89,   192,
     215,     3,   140,    31,    78,     0,   157,   143,   156,     0,
     150,   152,     0,     0,     0,     0,   126,    88,     0,   173,
      90,   213,     0,   117,   110,   115,     0,     0,   121,   123,
     119,     0,     0,    23,     0,    20,    21,     0,     0,     0,
       0,     0,     0,     0,     0,   205,   206,   207,     0,     0,
     159,     0,     0,    15,    16,     0,     0,     0,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    65,     0,
      22,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     196,     0,   189,     0,   188,   194,   139,     0,     0,   154,
     161,   155,   162,   141,     0,     0,   142,   127,   132,   130,
     176,     0,   109,   124,   116,     0,     0,   184,     0,     0,
     186,     0,     0,     0,     0,     0,   204,   208,     8,     0,
     161,   160,     0,    14,     0,    13,    11,     0,    17,    64,
      34,    35,    36,    39,    38,    41,    42,    46,    47,    44,
      45,    49,    50,    52,    54,    56,    58,    60,     0,    77,
     190,   165,     0,   169,     0,     0,   163,     0,     0,   151,
     153,   158,     0,   174,   122,   125,    24,   185,     0,     0,
       0,     0,     0,    32,    10,     0,    12,     0,   166,   170,
     164,   167,     0,   171,     0,   175,   177,   197,   199,   200,
       0,     0,     0,    18,    62,   168,   172,     0,     0,   202,
       0,   198,   201,   203
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -223,  -223,  -223,  -223,  -223,   -57,  -223,   -97,    70,    76,
    -146,    64,   107,   111,   106,   112,   113,  -223,   -55,   -24,
    -223,   -94,   -54,    44,     0,  -223,   267,  -223,    28,  -223,
    -223,   266,   -26,   -33,  -223,    89,  -223,   280,   191,    16,
     -15,   -34,    -4,  -223,   -61,  -223,   104,  -223,   175,  -123,
    -222,  -138,  -223,   -87,  -223,   143,    15,   218,  -173,  -223,
    -223,  -223,  -223,   314,  -223
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    25,   111,   112,   277,   113,   114,   115,   116,   117,
     118,   119,   120,   121,   122,   123,   124,   125,   126,   127,
     209,   128,   145,    57,    58,    48,    49,    28,    29,    30,
      31,    79,    80,    81,   167,   168,    32,    67,    68,    33,
      34,    35,    36,    44,   304,   150,   151,   152,   191,   305,
     242,   160,   251,   129,   130,   131,    60,   133,   134,   135,
     136,   137,    37,    38,    39
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint16 yytable[] =
{
      27,   149,    63,   228,   143,   188,   144,   182,    61,    45,
     265,     1,    50,    16,    17,    65,   189,   210,   306,    43,
     250,   218,   219,     1,    46,   241,    62,   173,    51,    52,
     175,   176,   143,    55,   144,   177,    66,    27,     1,    42,
      70,    40,    53,   138,    26,   163,   235,    23,   306,   170,
     159,    71,     1,   165,   245,     1,     1,   143,   138,   155,
      69,   231,   148,    77,   231,    76,   169,   271,   324,   229,
      82,   132,   287,   288,   289,   290,   246,   190,   189,   156,
     189,    26,    78,   268,   257,   261,   262,   263,   220,   221,
     237,   260,   322,    82,    82,    82,    24,   143,    82,   144,
     248,   274,   171,   166,   139,    78,    78,    78,   238,   143,
      78,   144,   253,    23,   280,   281,   282,   154,    47,   237,
     139,   231,   155,    24,    41,    54,    82,    23,   231,   231,
      23,    23,   312,   239,   159,   298,   165,   238,    78,   190,
      24,    24,   247,   318,   240,   178,   235,   211,   212,   213,
     319,   320,   313,   184,   143,   143,   143,   143,   143,   143,
     143,   143,   143,   143,   143,   143,   143,   143,   143,   143,
     143,   143,   317,   278,   336,   323,   139,    59,    82,   237,
     143,   179,   144,   302,   180,   279,   270,    23,    82,   325,
      78,   181,   231,    75,   192,   193,   194,   269,   231,   143,
      78,   144,   315,   140,   307,   141,    63,   299,    84,    85,
      86,   326,    87,    88,   348,   143,   183,   237,   185,   161,
     350,   186,   308,    45,    72,    73,   226,   340,   342,   214,
     215,   337,   338,   339,   240,   269,   216,   217,   148,   224,
     169,   222,   223,   225,   148,   230,   231,   334,   254,   255,
     143,   227,   144,   332,   349,   195,    74,   196,   267,   231,
     351,   231,   327,   353,   236,   270,   100,   101,   244,   148,
     143,   256,   344,   197,   259,   103,   104,   105,   106,   107,
     108,   266,     1,   264,   283,   284,   291,   292,   159,   243,
     110,   276,   285,   286,   272,   273,   275,   311,   316,   321,
     328,   343,   329,   330,   347,   345,   346,   352,   148,     2,
       3,     4,     5,     6,     7,     8,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22,
     141,   293,   295,    84,    85,    86,   294,    87,    88,   296,
     157,   297,   146,   162,   314,   153,   249,   258,   310,   237,
     233,    64,     0,     0,     0,     0,     0,    23,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   238,   303,     2,
       3,     4,     5,     6,     7,     8,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22,
       0,   100,   101,     0,     0,     0,     0,     0,     0,     0,
     103,   104,   105,   106,   107,   108,    83,     0,     0,    84,
      85,    86,     0,    87,    88,   110,   341,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   147,     0,
       0,     0,     0,     2,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      19,    20,    21,    22,     0,    89,    90,    91,     0,    92,
      93,    94,    95,    96,    97,    98,    99,   100,   101,   102,
       0,     0,     0,     0,     0,     0,   103,   104,   105,   106,
     107,   108,     0,     0,     0,     0,     0,     0,     0,    56,
     109,   110,    83,     0,     0,    84,    85,    86,     0,    87,
      88,     0,     0,     0,     0,     0,     0,   198,   199,   200,
     201,   202,   203,   204,   205,   206,   207,     0,     0,     2,
       3,     4,     5,     6,     7,     8,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22,
       0,    89,    90,    91,     0,    92,    93,    94,    95,    96,
      97,    98,    99,   100,   101,   102,   208,     0,     0,     0,
       0,     0,   103,   104,   105,   106,   107,   108,     0,     0,
       0,     0,     0,     0,     0,    56,   232,   110,   141,     0,
       0,    84,    85,    86,     2,    87,    88,     0,     0,     0,
       8,     9,    10,    11,    12,    13,    14,    15,    16,    17,
      18,    19,    20,    21,    22,     2,     0,     0,     0,     0,
       0,     8,     9,    10,    11,    12,    13,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    83,     0,     0,    84,
      85,    86,     0,    87,    88,     0,     0,     0,     0,   100,
     101,   164,     0,     0,     0,     0,     0,     0,   103,   104,
     105,   106,   107,   108,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   110,    83,     0,     0,    84,    85,    86,
       0,    87,    88,     0,     0,    89,    90,    91,     0,    92,
      93,    94,    95,    96,    97,    98,    99,   100,   101,   102,
       0,     0,     0,     0,     0,     0,   103,   104,   105,   106,
     107,   108,     0,     0,     0,     0,     0,     0,     0,    56,
     234,   110,     0,    89,    90,    91,     0,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,     0,     0,
       0,     0,     0,     0,   103,   104,   105,   106,   107,   108,
       0,     1,     0,     0,     0,     0,     0,    56,   300,   110,
      83,     0,     0,    84,    85,    86,     0,    87,    88,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     2,     3,
       4,     5,     6,     7,     8,     9,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    19,    20,    21,    22,   141,
       0,     0,    84,    85,    86,     0,    87,    88,     0,    89,
      90,    91,     0,    92,    93,    94,    95,    96,    97,    98,
      99,   100,   101,   102,     0,     0,    23,     0,     0,     0,
     103,   104,   105,   106,   107,   108,    24,     0,     0,     0,
       0,     0,     0,    56,   141,   110,     0,    84,    85,    86,
       0,    87,    88,     0,     0,     0,     0,     0,     0,     0,
     100,   101,     0,     0,     0,     0,     0,     0,     0,   103,
     104,   105,   106,   107,   108,     0,     0,     0,     0,     0,
       0,     0,   158,   335,   110,   141,     0,     0,    84,    85,
      86,   141,    87,    88,    84,    85,    86,     0,    87,    88,
       0,     0,     0,     0,     0,   100,   101,     0,     0,     0,
       0,     0,   142,     0,   103,   104,   105,   106,   107,   108,
     141,     0,     0,    84,    85,    86,     0,    87,    88,   110,
       0,     0,     0,     0,     0,     0,   141,     0,     0,    84,
      85,    86,     0,    87,    88,     0,   100,   101,     0,     0,
       0,     0,   100,   101,   187,   103,   104,   105,   106,   107,
     108,   103,   104,   105,   106,   107,   108,     0,   158,     0,
     110,     0,     0,     0,     0,     0,   110,     0,     0,     0,
       0,   100,   101,   102,     0,     0,     0,     0,     0,     0,
     103,   104,   105,   106,   107,   108,     0,   100,   101,     0,
       0,     0,     0,     0,   301,   110,   103,   104,   105,   106,
     107,   108,   141,     0,     0,    84,    85,    86,     0,    87,
      88,   110,     0,     0,     0,     0,     0,     0,   141,     0,
       0,    84,    85,    86,   141,    87,    88,    84,    85,    86,
       0,    87,    88,     0,     0,     0,     0,     0,     0,     0,
     141,     0,     0,    84,    85,    86,     0,    87,    88,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   100,   101,     0,     0,     0,     0,     0,
     331,     0,   103,   104,   105,   106,   107,   108,     0,   100,
     101,     0,     0,     0,     0,   100,   101,   110,   103,   104,
     105,   106,   107,   108,   103,   104,   105,   106,   107,   108,
       0,   100,   101,   172,     0,     0,     0,     0,     0,   174,
     103,   104,   105,   106,   107,   108,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   110,     2,     3,     4,     5,
       6,     7,     8,     9,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    22,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   237,     0,     0,     0,
       0,     0,     0,     0,    23,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   269,   303,     2,     3,     4,     5,
       6,     7,     8,     9,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    22,     2,     0,     0,
       0,     0,     0,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       2,     0,     0,     0,     0,   333,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,     0,     0,     0,   252,     2,     3,     4,     5,     6,
       7,     8,     9,    10,    11,    12,    13,    14,    15,    16,
      17,    18,    19,    20,    21,    22,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    74,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    56,     2,     3,     4,     5,     6,     7,     8,     9,
      10,    11,    12,    13,    14,    15,    16,    17,    18,    19,
      20,    21,    22,     2,     3,     4,     5,     6,     7,     8,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      19,    20,    21,    22,   309,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    56,     2,
       3,     4,     5,     6,     7,     8,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    19,    20,    21,    22
};

static const yytype_int16 yycheck[] =
{
       0,    62,    36,    19,    61,    99,    61,    94,    70,    24,
     183,     3,    27,    44,    45,    86,   110,   114,   240,    23,
     158,    14,    15,     3,     0,   148,    88,    84,    28,    29,
      87,    88,    89,    33,    89,    89,     3,    37,     3,    23,
      44,     3,     3,    58,     0,    78,   133,    78,   270,    82,
      74,    89,     3,    79,    67,     3,     3,   114,    73,    67,
      44,    67,    62,    86,    67,    50,    81,   190,    71,    85,
      54,    56,   218,   219,   220,   221,    89,   110,   172,    87,
     174,    37,    54,    89,   171,   179,   180,   181,    81,    82,
      70,   178,   265,    77,    78,    79,    88,   154,    82,   154,
     154,   195,    68,    68,    60,    77,    78,    79,    88,   166,
      82,   166,   166,    78,   211,   212,   213,    69,    66,    70,
      76,    67,    67,    88,    86,    86,   110,    78,    67,    67,
      78,    78,    67,   148,   158,   229,   162,    88,   110,   172,
      88,    88,    87,    89,   148,    68,   233,    78,    79,    80,
      89,    89,    87,     3,   211,   212,   213,   214,   215,   216,
     217,   218,   219,   220,   221,   222,   223,   224,   225,   226,
     227,   228,   259,   197,   312,   272,   132,    34,   162,    70,
     237,    88,   237,   237,    88,   209,   190,    78,   172,    67,
     162,    88,    67,    50,     9,    10,    11,    88,    67,   256,
     172,   256,   256,    60,    70,     3,   240,   231,     6,     7,
       8,    89,    10,    11,    89,   272,    88,    70,    66,    76,
      89,    66,    88,   238,    66,    67,    84,   321,   322,    76,
      77,   318,   319,   320,   238,    88,    12,    13,   238,    73,
     255,    16,    17,    83,   244,    66,    67,   308,    66,    67,
     307,    18,   307,   307,   341,    70,    69,    72,    66,    67,
     347,    67,    68,   350,    71,   269,    64,    65,    67,   269,
     327,    68,   327,    88,    68,    73,    74,    75,    76,    77,
      78,    66,     3,    57,   214,   215,   222,   223,   312,    89,
      88,    89,   216,   217,    89,     3,     3,     3,    89,    88,
      71,   325,    89,    89,    55,    71,    89,    66,   308,    30,
      31,    32,    33,    34,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    48,    49,    50,
       3,   224,   226,     6,     7,     8,   225,    10,    11,   227,
      73,   228,     3,    77,   255,    65,   155,   172,   244,    70,
     132,    37,    -1,    -1,    -1,    -1,    -1,    78,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    88,    89,    30,
      31,    32,    33,    34,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    48,    49,    50,
      -1,    64,    65,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      73,    74,    75,    76,    77,    78,     3,    -1,    -1,     6,
       7,     8,    -1,    10,    11,    88,    89,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    89,    -1,
      -1,    -1,    -1,    30,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,    41,    42,    43,    44,    45,    46,
      47,    48,    49,    50,    -1,    52,    53,    54,    -1,    56,
      57,    58,    59,    60,    61,    62,    63,    64,    65,    66,
      -1,    -1,    -1,    -1,    -1,    -1,    73,    74,    75,    76,
      77,    78,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    86,
      87,    88,     3,    -1,    -1,     6,     7,     8,    -1,    10,
      11,    -1,    -1,    -1,    -1,    -1,    -1,    20,    21,    22,
      23,    24,    25,    26,    27,    28,    29,    -1,    -1,    30,
      31,    32,    33,    34,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    48,    49,    50,
      -1,    52,    53,    54,    -1,    56,    57,    58,    59,    60,
      61,    62,    63,    64,    65,    66,    69,    -1,    -1,    -1,
      -1,    -1,    73,    74,    75,    76,    77,    78,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    86,    87,    88,     3,    -1,
      -1,     6,     7,     8,    30,    10,    11,    -1,    -1,    -1,
      36,    37,    38,    39,    40,    41,    42,    43,    44,    45,
      46,    47,    48,    49,    50,    30,    -1,    -1,    -1,    -1,
      -1,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,     3,    -1,    -1,     6,
       7,     8,    -1,    10,    11,    -1,    -1,    -1,    -1,    64,
      65,    87,    -1,    -1,    -1,    -1,    -1,    -1,    73,    74,
      75,    76,    77,    78,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    88,     3,    -1,    -1,     6,     7,     8,
      -1,    10,    11,    -1,    -1,    52,    53,    54,    -1,    56,
      57,    58,    59,    60,    61,    62,    63,    64,    65,    66,
      -1,    -1,    -1,    -1,    -1,    -1,    73,    74,    75,    76,
      77,    78,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    86,
      87,    88,    -1,    52,    53,    54,    -1,    56,    57,    58,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    -1,
      -1,    -1,    -1,    -1,    73,    74,    75,    76,    77,    78,
      -1,     3,    -1,    -1,    -1,    -1,    -1,    86,    87,    88,
       3,    -1,    -1,     6,     7,     8,    -1,    10,    11,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    30,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    47,    48,    49,    50,     3,
      -1,    -1,     6,     7,     8,    -1,    10,    11,    -1,    52,
      53,    54,    -1,    56,    57,    58,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    -1,    78,    -1,    -1,    -1,
      73,    74,    75,    76,    77,    78,    88,    -1,    -1,    -1,
      -1,    -1,    -1,    86,     3,    88,    -1,     6,     7,     8,
      -1,    10,    11,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      64,    65,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,
      74,    75,    76,    77,    78,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    86,    87,    88,     3,    -1,    -1,     6,     7,
       8,     3,    10,    11,     6,     7,     8,    -1,    10,    11,
      -1,    -1,    -1,    -1,    -1,    64,    65,    -1,    -1,    -1,
      -1,    -1,    71,    -1,    73,    74,    75,    76,    77,    78,
       3,    -1,    -1,     6,     7,     8,    -1,    10,    11,    88,
      -1,    -1,    -1,    -1,    -1,    -1,     3,    -1,    -1,     6,
       7,     8,    -1,    10,    11,    -1,    64,    65,    -1,    -1,
      -1,    -1,    64,    65,    66,    73,    74,    75,    76,    77,
      78,    73,    74,    75,    76,    77,    78,    -1,    86,    -1,
      88,    -1,    -1,    -1,    -1,    -1,    88,    -1,    -1,    -1,
      -1,    64,    65,    66,    -1,    -1,    -1,    -1,    -1,    -1,
      73,    74,    75,    76,    77,    78,    -1,    64,    65,    -1,
      -1,    -1,    -1,    -1,    71,    88,    73,    74,    75,    76,
      77,    78,     3,    -1,    -1,     6,     7,     8,    -1,    10,
      11,    88,    -1,    -1,    -1,    -1,    -1,    -1,     3,    -1,
      -1,     6,     7,     8,     3,    10,    11,     6,     7,     8,
      -1,    10,    11,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       3,    -1,    -1,     6,     7,     8,    -1,    10,    11,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    64,    65,    -1,    -1,    -1,    -1,    -1,
      71,    -1,    73,    74,    75,    76,    77,    78,    -1,    64,
      65,    -1,    -1,    -1,    -1,    64,    65,    88,    73,    74,
      75,    76,    77,    78,    73,    74,    75,    76,    77,    78,
      -1,    64,    65,    88,    -1,    -1,    -1,    -1,    -1,    88,
      73,    74,    75,    76,    77,    78,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    88,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,    41,    42,    43,
      44,    45,    46,    47,    48,    49,    50,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    70,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    78,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    88,    89,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,    41,    42,    43,
      44,    45,    46,    47,    48,    49,    50,    30,    -1,    -1,
      -1,    -1,    -1,    36,    37,    38,    39,    40,    41,    42,
      43,    44,    45,    46,    47,    48,    49,    50,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      30,    -1,    -1,    -1,    -1,    89,    36,    37,    38,    39,
      40,    41,    42,    43,    44,    45,    46,    47,    48,    49,
      50,    -1,    -1,    -1,    87,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    69,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    86,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      48,    49,    50,    30,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,    41,    42,    43,    44,    45,    46,
      47,    48,    49,    50,    51,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    86,    30,
      31,    32,    33,    34,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    47,    48,    49,    50
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      48,    49,    50,    78,    88,    92,   114,   115,   118,   119,
     120,   121,   127,   130,   131,   132,   133,   153,   154,   155,
       3,    86,   130,   133,   134,   131,     0,    66,   116,   117,
     131,   115,   115,     3,    86,   115,    86,   114,   115,   146,
     147,    70,    88,   132,   154,    86,     3,   128,   129,   130,
     133,    89,    66,    67,    69,   146,   147,    86,   119,   122,
     123,   124,   130,     3,     6,     7,     8,    10,    11,    52,
      53,    54,    56,    57,    58,    59,    60,    61,    62,    63,
      64,    65,    66,    73,    74,    75,    76,    77,    78,    87,
      88,    93,    94,    96,    97,    98,    99,   100,   101,   102,
     103,   104,   105,   106,   107,   108,   109,   110,   112,   144,
     145,   146,   147,   148,   149,   150,   151,   152,   131,   114,
     146,     3,    71,    96,   109,   113,     3,    89,   115,   135,
     136,   137,   138,   128,    69,    67,    87,   117,    86,   110,
     142,   146,   122,   124,    87,   123,    68,   125,   126,   131,
     124,    68,    88,    96,    88,    96,    96,   113,    68,    88,
      88,    88,   144,    88,     3,    66,    66,    66,   112,   112,
     124,   139,     9,    10,    11,    70,    72,    88,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    69,   111,
      98,    78,    79,    80,    76,    77,    12,    13,    14,    15,
      81,    82,    16,    17,    73,    83,    84,    18,    19,    85,
      66,    67,    87,   148,    87,   144,    71,    70,    88,   131,
     133,   140,   141,    89,    67,    67,    89,    87,   113,   129,
     142,   143,    87,   113,    66,    67,    68,   144,   139,    68,
     144,   112,   112,   112,    57,   149,    66,    66,    89,    88,
     133,   140,    89,     3,   112,     3,    89,    95,   110,   110,
      98,    98,    98,    99,    99,   100,   100,   101,   101,   101,
     101,   102,   102,   103,   104,   105,   106,   107,   112,   110,
      87,    71,   113,    89,   135,   140,   141,    70,    88,    51,
     137,     3,    67,    87,   126,   113,    89,   144,    89,    89,
      89,    88,   149,    98,    71,    67,    89,    68,    71,    89,
      89,    71,   113,    89,   135,    87,   142,   144,   144,   144,
     112,    89,   112,   110,   109,    71,    89,    55,    89,   144,
      89,   144,    66,   144
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    91,    92,    93,    93,    93,    93,    93,    93,    94,
      94,    94,    94,    94,    94,    94,    94,    95,    95,    96,
      96,    96,    96,    96,    96,    97,    97,    97,    97,    97,
      97,    98,    98,    99,    99,    99,    99,   100,   100,   100,
     101,   101,   101,   102,   102,   102,   102,   102,   103,   103,
     103,   104,   104,   105,   105,   106,   106,   107,   107,   108,
     108,   109,   109,   110,   110,   111,   111,   111,   111,   111,
     111,   111,   111,   111,   111,   111,   112,   112,   113,   114,
     114,   115,   115,   115,   115,   115,   115,   116,   116,   117,
     117,   118,   118,   118,   118,   118,   119,   119,   119,   119,
     119,   119,   119,   119,   119,   119,   119,   119,   119,   120,
     120,   120,   121,   121,   122,   122,   123,   124,   124,   124,
     124,   125,   125,   126,   126,   126,   127,   127,   127,   128,
     128,   129,   129,   130,   130,   131,   131,   132,   132,   132,
     132,   132,   132,   132,   133,   133,   133,   133,   134,   134,
     135,   135,   136,   136,   137,   137,   137,   138,   138,   139,
     139,   140,   140,   140,   141,   141,   141,   141,   141,   141,
     141,   141,   141,   142,   142,   142,   143,   143,   144,   144,
     144,   144,   144,   144,   145,   145,   145,   146,   146,   146,
     146,   147,   147,   148,   148,   149,   149,   150,   150,   150,
     151,   151,   151,   151,   152,   152,   152,   152,   152,   153,
     153,   154,   154,   155,   155,   155,   155
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     1,     1,     1,     1,     3,     1,
       4,     3,     4,     3,     3,     2,     2,     1,     3,     1,
       2,     2,     2,     2,     4,     1,     1,     1,     1,     1,
       1,     1,     4,     1,     3,     3,     3,     1,     3,     3,
       1,     3,     3,     1,     3,     3,     3,     3,     1,     3,
       3,     1,     3,     1,     3,     1,     3,     1,     3,     1,
       3,     1,     5,     1,     3,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     3,     1,     2,
       3,     1,     2,     1,     2,     1,     2,     1,     3,     1,
       3,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     5,
       4,     2,     1,     1,     1,     2,     3,     2,     1,     2,
       1,     1,     3,     1,     2,     3,     4,     5,     2,     1,
       3,     1,     3,     1,     1,     2,     1,     1,     3,     4,
       3,     4,     4,     3,     1,     2,     2,     3,     1,     2,
       1,     3,     1,     3,     2,     2,     1,     1,     3,     1,
       2,     1,     1,     2,     3,     2,     3,     3,     4,     2,
       3,     3,     4,     1,     3,     4,     1,     3,     1,     1,
       1,     1,     1,     1,     3,     4,     3,     2,     3,     3,
       4,     1,     2,     1,     2,     1,     2,     5,     7,     5,
       5,     7,     6,     7,     3,     2,     2,     2,     3,     1,
       2,     1,     1,     4,     3,     3,     2
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 57 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		root = createTree(PROGRAM,1,(yyvsp[0].gt));
	}
#line 1785 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 3:
#line 63 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PRIMARY_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 1793 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 4:
#line 66 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PRIMARY_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 1801 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 5:
#line 69 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PRIMARY_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 1809 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 6:
#line 72 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PRIMARY_EXPRESSION,1,(yyvsp[0].gt));		
	}
#line 1817 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 7:
#line 75 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PRIMARY_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 1825 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 8:
#line 78 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PRIMARY_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1833 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 9:
#line 84 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 1841 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 10:
#line 87 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1849 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 11:
#line 90 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1857 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 12:
#line 93 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1865 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 13:
#line 97 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1873 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 14:
#line 100 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1881 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 15:
#line 103 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1889 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 16:
#line 106 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POSTFIX_EXPRESSION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1897 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 17:
#line 112 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ARGUMENT_EXPRESSION_LIST,1,(yyvsp[0].gt));
	}
#line 1905 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 18:
#line 115 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ARGUMENT_EXPRESSION_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1913 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 19:
#line 121 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 1921 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 20:
#line 124 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_EXPRESSION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1929 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 21:
#line 127 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_EXPRESSION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1937 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 22:
#line 130 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_EXPRESSION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1945 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 23:
#line 133 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_EXPRESSION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1953 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 24:
#line 136 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_EXPRESSION,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 1961 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 25:
#line 142 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_OPERATOR,1,(yyvsp[0].gt));
	}
#line 1969 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 26:
#line 145 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_OPERATOR,1,(yyvsp[0].gt));
	}
#line 1977 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 27:
#line 148 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_OPERATOR,1,(yyvsp[0].gt));
	}
#line 1985 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 28:
#line 151 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_OPERATOR,1,(yyvsp[0].gt));
	}
#line 1993 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 29:
#line 154 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2001 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 30:
#line 157 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(UNARY_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2009 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 31:
#line 163 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(CAST_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2017 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 32:
#line 166 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(CAST_EXPRESSION,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2025 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 33:
#line 172 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(MULTIPLICATIVE_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2033 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 34:
#line 175 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(MULTIPLICATIVE_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2041 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 35:
#line 178 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(MULTIPLICATIVE_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2049 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 36:
#line 181 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(MULTIPLICATIVE_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2057 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 37:
#line 187 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ADDITIVE_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2065 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 38:
#line 190 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ADDITIVE_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2073 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 39:
#line 193 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ADDITIVE_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2081 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 40:
#line 199 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SHIFT_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2089 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 41:
#line 202 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SHIFT_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2097 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 42:
#line 205 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SHIFT_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2105 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 43:
#line 211 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(RELATIONAL_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2113 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 44:
#line 214 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(RELATIONAL_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2121 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 45:
#line 217 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(RELATIONAL_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2129 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 46:
#line 220 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(RELATIONAL_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2137 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 47:
#line 223 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(RELATIONAL_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2145 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 48:
#line 229 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EQUALITY_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2153 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 49:
#line 232 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EQUALITY_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2161 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 50:
#line 235 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EQUALITY_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2169 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 51:
#line 241 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(AND_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2177 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 52:
#line 244 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(AND_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2185 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 53:
#line 250 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXCLUSIVE_OR_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2193 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 54:
#line 253 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXCLUSIVE_OR_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2201 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 55:
#line 259 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INCLUSIVE_OR_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2209 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 56:
#line 262 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INCLUSIVE_OR_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2217 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 57:
#line 268 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(LOGICAL_AND_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2225 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 58:
#line 271 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(LOGICAL_AND_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2233 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 59:
#line 277 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(LOGICAL_OR_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2241 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 60:
#line 280 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(LOGICAL_OR_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2249 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 61:
#line 286 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(CONDITIONAL_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2257 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 62:
#line 289 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(CONDITIONAL_EXPRESSION,5,(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2265 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 63:
#line 295 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2273 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 64:
#line 298 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2281 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 65:
#line 304 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2289 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 66:
#line 307 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2297 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 67:
#line 310 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2305 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 68:
#line 313 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2313 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 69:
#line 316 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2321 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 70:
#line 319 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2329 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 71:
#line 322 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2337 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 72:
#line 325 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2345 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 73:
#line 328 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2353 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 74:
#line 331 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2361 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 75:
#line 334 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ASSIGNMENT_OPERATOR,1,(yyvsp[0].gt));
	}
#line 2369 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 76:
#line 340 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2377 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 77:
#line 343 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXPRESSION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2385 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 78:
#line 349 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(CONSTANT_EXPRESSION,1,(yyvsp[0].gt));
	}
#line 2393 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 79:
#line 355 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2401 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 80:
#line 358 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2409 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 81:
#line 364 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_SPECIFIERS,1,(yyvsp[0].gt));
	}
#line 2417 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 82:
#line 367 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_SPECIFIERS,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2425 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 83:
#line 370 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_SPECIFIERS,1,(yyvsp[0].gt));
	}
#line 2433 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 84:
#line 373 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_SPECIFIERS,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2441 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 85:
#line 376 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_SPECIFIERS,1,(yyvsp[0].gt));
	}
#line 2449 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 86:
#line 379 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_SPECIFIERS,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2457 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 87:
#line 385 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INIT_DECLARATOR_LIST,1,(yyvsp[0].gt));
	}
#line 2465 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 88:
#line 388 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INIT_DECLARATOR_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2473 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 89:
#line 394 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INIT_DECLARATOR,1,(yyvsp[0].gt));
	}
#line 2481 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 90:
#line 397 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INIT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2489 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 91:
#line 403 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STORAGE_CLASS_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2497 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 92:
#line 406 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STORAGE_CLASS_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2505 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 93:
#line 409 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STORAGE_CLASS_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2513 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 94:
#line 412 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STORAGE_CLASS_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2521 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 95:
#line 415 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STORAGE_CLASS_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2529 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 96:
#line 421 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2537 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 97:
#line 424 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2545 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 98:
#line 427 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2553 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 99:
#line 430 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2561 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 100:
#line 433 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2569 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 101:
#line 436 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2577 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 102:
#line 439 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2585 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 103:
#line 442 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2593 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 104:
#line 445 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2601 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 105:
#line 448 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2609 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 106:
#line 451 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2617 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 107:
#line 454 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2625 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 108:
#line 457 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,1,(yyvsp[0].gt));
	}
#line 2633 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 109:
#line 463 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,5,(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2641 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 110:
#line 466 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2649 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 111:
#line 469 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_SPECIFIER,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2657 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 112:
#line 475 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_OR_UNION,1,(yyvsp[0].gt));
	}
#line 2665 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 113:
#line 478 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_OR_UNION,1,(yyvsp[0].gt));
	}
#line 2673 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 114:
#line 484 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATION_LIST,1,(yyvsp[0].gt));
	}
#line 2681 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 115:
#line 487 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATION_LIST,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2689 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 116:
#line 493 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2697 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 117:
#line 499 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SPECIFIER_QUALIFIER_LIST,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2705 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 118:
#line 502 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SPECIFIER_QUALIFIER_LIST,1,(yyvsp[0].gt));
	}
#line 2713 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 119:
#line 505 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SPECIFIER_QUALIFIER_LIST,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2721 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 120:
#line 508 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SPECIFIER_QUALIFIER_LIST,1,(yyvsp[0].gt));
	}
#line 2729 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 121:
#line 514 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATOR_LIST,1,(yyvsp[0].gt));
	}
#line 2737 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 122:
#line 517 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATOR_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2745 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 123:
#line 523 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATOR,1,(yyvsp[0].gt));
	}
#line 2753 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 124:
#line 526 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATOR,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2761 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 125:
#line 529 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STRUCT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2769 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 126:
#line 535 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ENUM_SPECIFIER,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2777 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 127:
#line 538 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ENUM_SPECIFIER,5,(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2785 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 128:
#line 542 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ENUM_SPECIFIER,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2793 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 129:
#line 548 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ENUMERATOR_LIST,1,(yyvsp[0].gt));
	}
#line 2801 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 130:
#line 551 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ENUMERATOR_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2809 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 131:
#line 557 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ENUMERATOR,1,(yyvsp[0].gt));
	}
#line 2817 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 132:
#line 560 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ENUMERATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2825 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 133:
#line 566 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_QUALIFIER,1,(yyvsp[0].gt));
	}
#line 2833 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 134:
#line 569 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_QUALIFIER,1,(yyvsp[0].gt));
	}
#line 2841 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 135:
#line 575 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATOR,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2849 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 136:
#line 578 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATOR,1,(yyvsp[0].gt));
	}
#line 2857 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 137:
#line 584 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_DECLARATOR,1,(yyvsp[0].gt));
	}
#line 2865 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 138:
#line 587 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2873 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 139:
#line 590 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_DECLARATOR,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2881 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 140:
#line 593 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2889 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 141:
#line 596 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_DECLARATOR,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2897 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 142:
#line 599 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_DECLARATOR,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2905 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 143:
#line 602 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2913 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 144:
#line 608 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POINTER,1,(yyvsp[0].gt));
	}
#line 2921 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 145:
#line 611 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POINTER,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2929 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 146:
#line 614 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POINTER,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2937 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 147:
#line 617 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(POINTER,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2945 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 148:
#line 623 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_QUALIFIER_LIST,1,(yyvsp[0].gt));
	}
#line 2953 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 149:
#line 626 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE_QUALIFIER_LIST,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2961 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 150:
#line 633 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PARAMETER_TYPE_LIST,1,(yyvsp[0].gt));
	}
#line 2969 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 151:
#line 636 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PARAMETER_TYPE_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2977 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 152:
#line 642 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PARAMETER_LIST,1,(yyvsp[0].gt));
	}
#line 2985 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 153:
#line 645 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PARAMETER_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 2993 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 154:
#line 651 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PARAMETER_DECLARATION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3001 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 155:
#line 654 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PARAMETER_DECLARATION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3009 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 156:
#line 657 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(PARAMETER_DECLARATION,1,(yyvsp[0].gt));
	}
#line 3017 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 157:
#line 663 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(IDENTIFIER_LIST,1,(yyvsp[0].gt));
	}
#line 3025 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 158:
#line 666 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(IDENTIFIER_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3033 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 159:
#line 672 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE,1,(yyvsp[0].gt));
	}
#line 3041 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 160:
#line 675 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TYPE,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3049 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 161:
#line 681 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ABSTRACT_DECLARATOR,1,(yyvsp[0].gt));
	}
#line 3057 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 162:
#line 684 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ABSTRACT_DECLARATOR,1,(yyvsp[0].gt));
	}
#line 3065 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 163:
#line 687 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ABSTRACT_DECLARATOR,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3073 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 164:
#line 693 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3081 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 165:
#line 696 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3089 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 166:
#line 699 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3097 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 167:
#line 702 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3105 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 168:
#line 705 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3113 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 169:
#line 708 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3121 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 170:
#line 711 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3129 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 171:
#line 714 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3137 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 172:
#line 717 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DIRECT_ABSTRACT_DECLARATOR,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3145 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 173:
#line 723 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INITIALIZER,1,(yyvsp[0].gt));
	}
#line 3153 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 174:
#line 726 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INITIALIZER,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3161 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 175:
#line 729 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INITIALIZER,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3169 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 176:
#line 735 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INITIALIZER_LIST,1,(yyvsp[0].gt));
	}
#line 3177 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 177:
#line 738 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(INITIALIZER_LIST,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3185 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 178:
#line 744 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT,1,(yyvsp[0].gt));
	}
#line 3193 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 179:
#line 747 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT,1,(yyvsp[0].gt));
	}
#line 3201 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 180:
#line 750 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT,1,(yyvsp[0].gt));
	}
#line 3209 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 181:
#line 753 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT,1,(yyvsp[0].gt));
	}
#line 3217 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 182:
#line 756 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT,1,(yyvsp[0].gt));
	}
#line 3225 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 183:
#line 759 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT,1,(yyvsp[0].gt));
	}
#line 3233 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 184:
#line 765 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(LABELED_STATEMENT,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3241 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 185:
#line 768 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(LABELED_STATEMENT,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3249 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 186:
#line 771 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(LABELED_STATEMENT,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3257 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 187:
#line 777 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(COMPOUND_STATEMENT,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3265 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 188:
#line 780 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(COMPOUND_STATEMENT,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3273 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 189:
#line 783 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(COMPOUND_STATEMENT,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3281 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 190:
#line 786 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(COMPOUND_STATEMENT,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3289 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 191:
#line 792 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_LIST,1,(yyvsp[0].gt));
	}
#line 3297 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 192:
#line 795 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(DECLARATION_LIST,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3305 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 193:
#line 801 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT_LIST,1,(yyvsp[0].gt));
	}
#line 3313 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 194:
#line 804 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(STATEMENT_LIST,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3321 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 195:
#line 810 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXPRESSION_STATEMENT,1,(yyvsp[0].gt));
	}
#line 3329 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 196:
#line 813 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXPRESSION_STATEMENT,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3337 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 197:
#line 819 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SELECTION_STATEMENT,5,(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3345 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 198:
#line 822 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SELECTION_STATEMENT,7,(yyvsp[-6].gt),(yyvsp[-5].gt),(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3353 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 199:
#line 825 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(SELECTION_STATEMENT,5,(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3361 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 200:
#line 831 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ITERATION_STATEMENT,5,(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3369 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 201:
#line 834 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ITERATION_STATEMENT,7,(yyvsp[-6].gt),(yyvsp[-5].gt),(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3377 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 202:
#line 837 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ITERATION_STATEMENT,6,(yyvsp[-5].gt),(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3385 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 203:
#line 840 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(ITERATION_STATEMENT,7,(yyvsp[-6].gt),(yyvsp[-5].gt),(yyvsp[-4].gt),(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3393 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 204:
#line 846 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(JUMP_STATEMENT,2,(yyvsp[-2].gt),(yyvsp[-1].gt));
	}
#line 3401 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 205:
#line 849 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(JUMP_STATEMENT,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3409 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 206:
#line 852 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(JUMP_STATEMENT,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3417 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 207:
#line 855 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(JUMP_STATEMENT,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3425 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 208:
#line 858 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(JUMP_STATEMENT,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3433 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 209:
#line 864 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TRANSLATION_UNIT,1,(yyvsp[0].gt));
	}
#line 3441 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 210:
#line 867 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(TRANSLATION_UNIT,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3449 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 211:
#line 873 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXTERNAL_DECLARATION,1,(yyvsp[0].gt));
	}
#line 3457 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 212:
#line 876 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(EXTERNAL_DECLARATION,1,(yyvsp[0].gt));
	}
#line 3465 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 213:
#line 882 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(FUNCTION_DEFINITION,4,(yyvsp[-3].gt),(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3473 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 214:
#line 885 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(FUNCTION_DEFINITION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3481 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 215:
#line 888 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(FUNCTION_DEFINITION,3,(yyvsp[-2].gt),(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3489 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;

  case 216:
#line 891 "Parser/ansicParser.y" /* yacc.c:1646  */
    {
		(yyval.gt) = createTree(FUNCTION_DEFINITION,2,(yyvsp[-1].gt),(yyvsp[0].gt));
	}
#line 3497 "Parser/ansicParser.c" /* yacc.c:1646  */
    break;


#line 3501 "Parser/ansicParser.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 896 "Parser/ansicParser.y" /* yacc.c:1906  */


void yyerror(char const *s)
{
	fflush(stdout);
	printf("\n%*s\n%*s\n", column, "^", column, s);
}
