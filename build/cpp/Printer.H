#ifndef PRINTER_HEADER
#define PRINTER_HEADER

#include "Absyn.H"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>


/* Certain applications may improve performance by changing the buffer size */
#define BUFFER_INITIAL 2000
/* You may wish to change _L_PAREN or _R_PAREN */
#define _L_PAREN '('
#define _R_PAREN ')'

class PrintAbsyn : public Visitor
{
 protected:
  int _n_, _i_;
  /* The following are simple heuristics for rendering terminals */
  /* You may wish to change them */
  void render(Char c);
  void render(String s);
void render(char* s);
  void indent(void);
  void backup(void);
 public:
  PrintAbsyn(void);
  ~PrintAbsyn(void);
  char* print(Visitable* v);

  void visitGlobal(Global *p); /* abstract class */
  void visitTopLevel(TopLevel *p);
  void visitListTopLevelBlock(ListTopLevelBlock* p);
  void visitTopLevelBlock(TopLevelBlock *p); /* abstract class */
  void visitBlockAtTop(BlockAtTop *p);
  void visitMain(Main *p);
  void visitListBlock(ListBlock* p);
  void visitNamespaceIdent(NamespaceIdent *p); /* abstract class */
  void visitNamespaceIdentUpperIdent(NamespaceIdentUpperIdent *p);
  void visitNamespaceIdentLowerIdent(NamespaceIdentLowerIdent *p);
  void visitParamIdent(ParamIdent *p); /* abstract class */
  void visitParamIdentUpperIdent(ParamIdentUpperIdent *p);
  void visitParamIdentLowerIdent(ParamIdentLowerIdent *p);
  void visitListNamespaceIdent(ListNamespaceIdent* p);
  void visitListGenericParameter(ListGenericParameter* p);
  void visitType(Type *p); /* abstract class */
  void visitGenericPlaceholder(GenericPlaceholder *p);
  void visitBaseType(BaseType *p);
  void visitGenericType(GenericType *p);
  void visitParametricType(ParametricType *p); /* abstract class */
  void visitParameter(Parameter *p);
  void visitListType(ListType* p);
  void visitBlock(Block *p); /* abstract class */
  void visitNoOp(NoOp *p);
  void visitNamespace(Namespace *p);
  void visitFunctor(Functor *p);
  void visitListFunctorDecl(ListFunctorDecl* p);
  void visitFunctorDecl(FunctorDecl *p); /* abstract class */
  void visitFunctorComponent(FunctorComponent *p);
  void visitFunctorSpec(FunctorSpec *p); /* abstract class */
  void visitGeneric(Generic *p);
  void visitSatisfies(Satisfies *p);
  void visitRequires(Requires *p);
  void visitFn(Fn *p);
  void visitFnDecl(FnDecl *p); /* abstract class */
  void visitFnParams(FnParams *p);
  void visitListFormalArgument(ListFormalArgument* p);
  void visitFormalArgument(FormalArgument *p); /* abstract class */
  void visitValueParam(ValueParam *p);
  void visitGenericParam(GenericParam *p);
  void visitInformalParam(InformalParam *p); /* abstract class */
  void visitFnCallExpr(FnCallExpr *p);
  void visitListInformalParam(ListInformalParam* p);
  void visitListStatement(ListStatement* p);
  void visitExpression(Expression *p); /* abstract class */
  void visitValueOrRef(ValueOrRef *p);
  void visitIntLiteral(IntLiteral *p);
  void visitRealLiteral(RealLiteral *p);
  void visitStringLiteral(StringLiteral *p);
  void visitCharLiteral(CharLiteral *p);
  void visitFnLiteral(FnLiteral *p);
  void visitDotOperator(DotOperator *p);
  void visitPipeOperator(PipeOperator *p);
  void visitCallOperator(CallOperator *p);
  void visitLeftShiftOperator(LeftShiftOperator *p);
  void visitRightShiftOperator(RightShiftOperator *p);
  void visitMultOperator(MultOperator *p);
  void visitDivisionOperator(DivisionOperator *p);
  void visitPlusOperator(PlusOperator *p);
  void visitMinusOperator(MinusOperator *p);
  void visitStatement(Statement *p); /* abstract class */
  void visitDeclaration(Declaration *p);
  void visitExpr(Expr *p);
  void visitAssignment(Assignment *p);

  void visitInteger(Integer i);
  void visitDouble(Double d);
  void visitChar(Char c);
  void visitString(String s);
  void visitIdent(String s);
  void visitGenericParameter(String s);
  void visitUpperIdent(String s);
  void visitLowerIdent(String s);
 protected:
  void inline bufAppend(const char* s)
  {
    int len = strlen(s);
    while (cur_ + len > buf_size)
    {
      buf_size *= 2; /* Double the buffer size */
      resizeBuffer();
    }
    for(int n = 0; n < len; n++)
    {
      buf_[cur_ + n] = s[n];
    }
    cur_ += len;
    buf_[cur_] = 0;
  }
  void inline bufAppend(const char c)
  {
    if (cur_ == buf_size)
    {
      buf_size *= 2; /* Double the buffer size */
      resizeBuffer();
    }
    buf_[cur_] = c;
    cur_++;
    buf_[cur_] = 0;
  }
  void inline bufAppend(String str)
  {
    const char* s = str.c_str();
    bufAppend(s);
  }
  void inline bufReset(void)
  {
    cur_ = 0;
    buf_size = BUFFER_INITIAL;
    resizeBuffer();
    memset(buf_, 0, buf_size);
  }
  void inline resizeBuffer(void)
  {
    char* temp = (char*) malloc(buf_size);
    if (!temp)
    {
      fprintf(stderr, "Error: Out of memory while attempting to grow buffer!\n");
      exit(1);
    }
    if (buf_)
    {
      strcpy(temp, buf_);
      free(buf_);
    }
    buf_ = temp;
  }
  char *buf_;
  int cur_, buf_size;
};



class ShowAbsyn : public Visitor
{
 public:
  ShowAbsyn(void);
  ~ShowAbsyn(void);
  char* show(Visitable* v);

  void visitGlobal(Global *p); /* abstract class */
  void visitTopLevel(TopLevel *p);
  void visitListTopLevelBlock(ListTopLevelBlock* p);
  void visitTopLevelBlock(TopLevelBlock *p); /* abstract class */
  void visitBlockAtTop(BlockAtTop *p);
  void visitMain(Main *p);
  void visitListBlock(ListBlock* p);
  void visitNamespaceIdent(NamespaceIdent *p); /* abstract class */
  void visitNamespaceIdentUpperIdent(NamespaceIdentUpperIdent *p);
  void visitNamespaceIdentLowerIdent(NamespaceIdentLowerIdent *p);
  void visitParamIdent(ParamIdent *p); /* abstract class */
  void visitParamIdentUpperIdent(ParamIdentUpperIdent *p);
  void visitParamIdentLowerIdent(ParamIdentLowerIdent *p);
  void visitListNamespaceIdent(ListNamespaceIdent* p);
  void visitListGenericParameter(ListGenericParameter* p);
  void visitType(Type *p); /* abstract class */
  void visitGenericPlaceholder(GenericPlaceholder *p);
  void visitBaseType(BaseType *p);
  void visitGenericType(GenericType *p);
  void visitParametricType(ParametricType *p); /* abstract class */
  void visitParameter(Parameter *p);
  void visitListType(ListType* p);
  void visitBlock(Block *p); /* abstract class */
  void visitNoOp(NoOp *p);
  void visitNamespace(Namespace *p);
  void visitFunctor(Functor *p);
  void visitListFunctorDecl(ListFunctorDecl* p);
  void visitFunctorDecl(FunctorDecl *p); /* abstract class */
  void visitFunctorComponent(FunctorComponent *p);
  void visitFunctorSpec(FunctorSpec *p); /* abstract class */
  void visitGeneric(Generic *p);
  void visitSatisfies(Satisfies *p);
  void visitRequires(Requires *p);
  void visitFn(Fn *p);
  void visitFnDecl(FnDecl *p); /* abstract class */
  void visitFnParams(FnParams *p);
  void visitListFormalArgument(ListFormalArgument* p);
  void visitFormalArgument(FormalArgument *p); /* abstract class */
  void visitValueParam(ValueParam *p);
  void visitGenericParam(GenericParam *p);
  void visitInformalParam(InformalParam *p); /* abstract class */
  void visitFnCallExpr(FnCallExpr *p);
  void visitListInformalParam(ListInformalParam* p);
  void visitListStatement(ListStatement* p);
  void visitExpression(Expression *p); /* abstract class */
  void visitValueOrRef(ValueOrRef *p);
  void visitIntLiteral(IntLiteral *p);
  void visitRealLiteral(RealLiteral *p);
  void visitStringLiteral(StringLiteral *p);
  void visitCharLiteral(CharLiteral *p);
  void visitFnLiteral(FnLiteral *p);
  void visitDotOperator(DotOperator *p);
  void visitPipeOperator(PipeOperator *p);
  void visitCallOperator(CallOperator *p);
  void visitLeftShiftOperator(LeftShiftOperator *p);
  void visitRightShiftOperator(RightShiftOperator *p);
  void visitMultOperator(MultOperator *p);
  void visitDivisionOperator(DivisionOperator *p);
  void visitPlusOperator(PlusOperator *p);
  void visitMinusOperator(MinusOperator *p);
  void visitStatement(Statement *p); /* abstract class */
  void visitDeclaration(Declaration *p);
  void visitExpr(Expr *p);
  void visitAssignment(Assignment *p);

  void visitInteger(Integer i);
  void visitDouble(Double d);
  void visitChar(Char c);
  void visitString(String s);
  void visitIdent(String s);
  void visitGenericParameter(String s);
  void visitUpperIdent(String s);
  void visitLowerIdent(String s);
 protected:
  void inline bufAppend(const char* s)
  {
    int len = strlen(s);
    while (cur_ + len > buf_size)
    {
      buf_size *= 2; /* Double the buffer size */
      resizeBuffer();
    }
    for(int n = 0; n < len; n++)
    {
      buf_[cur_ + n] = s[n];
    }
    cur_ += len;
    buf_[cur_] = 0;
  }
  void inline bufAppend(const char c)
  {
    if (cur_ == buf_size)
    {
      buf_size *= 2; /* Double the buffer size */
      resizeBuffer();
    }
    buf_[cur_] = c;
    cur_++;
    buf_[cur_] = 0;
  }
  void inline bufAppend(String str)
  {
    const char* s = str.c_str();
    bufAppend(s);
  }
  void inline bufReset(void)
  {
    cur_ = 0;
    buf_size = BUFFER_INITIAL;
    resizeBuffer();
    memset(buf_, 0, buf_size);
  }
  void inline resizeBuffer(void)
  {
    char* temp = (char*) malloc(buf_size);
    if (!temp)
    {
      fprintf(stderr, "Error: Out of memory while attempting to grow buffer!\n");
      exit(1);
    }
    if (buf_)
    {
      strcpy(temp, buf_);
      free(buf_);
    }
    buf_ = temp;
  }
  char *buf_;
  int cur_, buf_size;
};




#endif

