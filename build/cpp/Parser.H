#ifndef PARSER_HEADER_FILE
#define PARSER_HEADER_FILE

#include<vector>
#include<string>


class Global;
class ListTopLevelBlock;
class TopLevelBlock;
class ListBlock;
class NamespaceIdent;
class ParamIdent;
class ListNamespaceIdent;
class ListGenericParameter;
class Type;
class ParametricType;
class ListType;
class Block;
class ListFunctorDecl;
class FunctorDecl;
class FunctorSpec;
class FnDecl;
class ListFormalArgument;
class FormalArgument;
class InformalParam;
class ListInformalParam;
class ListStatement;
class Expression;
class Statement;

typedef union
{
  int int_;
  char char_;
  double double_;
  char* string_;
  Global* global_;
  ListTopLevelBlock* listtoplevelblock_;
  TopLevelBlock* toplevelblock_;
  ListBlock* listblock_;
  NamespaceIdent* namespaceident_;
  ParamIdent* paramident_;
  ListNamespaceIdent* listnamespaceident_;
  ListGenericParameter* listgenericparameter_;
  Type* type_;
  ParametricType* parametrictype_;
  ListType* listtype_;
  Block* block_;
  ListFunctorDecl* listfunctordecl_;
  FunctorDecl* functordecl_;
  FunctorSpec* functorspec_;
  FnDecl* fndecl_;
  ListFormalArgument* listformalargument_;
  FormalArgument* formalargument_;
  InformalParam* informalparam_;
  ListInformalParam* listinformalparam_;
  ListStatement* liststatement_;
  Expression* expression_;
  Statement* statement_;
} YYSTYPE;

Global* pGlobal(FILE *inp);
Global* pGlobal(const char *str);



#define _ERROR_ 258
#define _SYMB_0 259
#define _SYMB_1 260
#define _SYMB_2 261
#define _SYMB_3 262
#define _SYMB_4 263
#define _SYMB_5 264
#define _SYMB_6 265
#define _SYMB_7 266
#define _SYMB_8 267
#define _SYMB_9 268
#define _SYMB_10 269
#define _SYMB_11 270
#define _SYMB_12 271
#define _SYMB_13 272
#define _SYMB_14 273
#define _SYMB_15 274
#define _SYMB_16 275
#define _SYMB_17 276
#define _SYMB_18 277
#define _SYMB_19 278
#define _SYMB_20 279
#define _SYMB_21 280
#define _SYMB_22 281
#define _SYMB_23 282
#define _SYMB_24 283
#define _SYMB_25 284
#define _SYMB_26 285
#define _STRING_ 286
#define _CHAR_ 287
#define _INTEGER_ 288
#define _DOUBLE_ 289

extern YYSTYPE yylval;

#endif
