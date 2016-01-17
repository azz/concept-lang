/*** BNFC-Generated Pretty Printer and Abstract Syntax Viewer ***/

#include <string>
#include "Printer.H"
#define INDENT_WIDTH 2


//You may wish to change render
void PrintAbsyn::render(Char c)
{
  if (c == '{')
  {
     bufAppend('\n');
     indent();
     bufAppend(c);
     _n_ = _n_ + INDENT_WIDTH;
     bufAppend('\n');
     indent();
  }
  else if (c == '(' || c == '[')
     bufAppend(c);
  else if (c == ')' || c == ']')
  {
     backup();
     bufAppend(c);
  }
  else if (c == '}')
  {
     int t;
     _n_ = _n_ - INDENT_WIDTH;
     for (t=0; t<INDENT_WIDTH; t++) {
       backup();
     }
     bufAppend(c);
     bufAppend('\n');
     indent();
  }
  else if (c == ',')
  {
     backup();
     bufAppend(c);
     bufAppend(' ');
  }
  else if (c == ';')
  {
     backup();
     bufAppend(c);
     bufAppend('\n');
     indent();
  }
  else if (c == 0) return;
  else
  {
     bufAppend(' ');
     bufAppend(c);
     bufAppend(' ');
  }
}
void PrintAbsyn::render(String s_)
{
  const char *s = s_.c_str() ;
  if(strlen(s) > 0)
  {
    bufAppend(s);
    bufAppend(' ');
  }
}
void PrintAbsyn::render(char* s)
{
  if(strlen(s) > 0)
  {
    bufAppend(s);
    bufAppend(' ');
  }
}
void PrintAbsyn::indent()
{
  int n = _n_;
  while (n > 0)
  {
    bufAppend(' ');
    n--;
  }
}
void PrintAbsyn::backup()
{
  if (buf_[cur_ - 1] == ' ')
  {
    buf_[cur_ - 1] = 0;
    cur_--;
  }
}
PrintAbsyn::PrintAbsyn(void)
{
  _i_ = 0; _n_ = 0;
  buf_ = 0;
  bufReset();
}

PrintAbsyn::~PrintAbsyn(void)
{
}

char* PrintAbsyn::print(Visitable *v)
{
  _i_ = 0; _n_ = 0;
  bufReset();
  v->accept(this);
  return buf_;
}
void PrintAbsyn::visitGlobal(Global*p) {} //abstract class

void PrintAbsyn::visitTopLevel(TopLevel* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  if(p->listtoplevelblock_) {_i_ = 0; p->listtoplevelblock_->accept(this);}
  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitListTopLevelBlock(ListTopLevelBlock *listtoplevelblock)
{
  for (ListTopLevelBlock::const_iterator i = listtoplevelblock->begin() ; i != listtoplevelblock->end() ; ++i)
  {
    (*i)->accept(this);
    render("");
  }
}void PrintAbsyn::visitTopLevelBlock(TopLevelBlock*p) {} //abstract class

void PrintAbsyn::visitBlockAtTop(BlockAtTop* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->block_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitMain(Main* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('(');
  render("main");
  _i_ = 0; p->fndecl_->accept(this);
  render(')');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitListBlock(ListBlock *listblock)
{
  for (ListBlock::const_iterator i = listblock->begin() ; i != listblock->end() ; ++i)
  {
    (*i)->accept(this);
    render("");
  }
}void PrintAbsyn::visitNamespaceIdent(NamespaceIdent*p) {} //abstract class

void PrintAbsyn::visitNamespaceIdentUpperIdent(NamespaceIdentUpperIdent* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitIdent(p->upperident_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitNamespaceIdentLowerIdent(NamespaceIdentLowerIdent* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitIdent(p->lowerident_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitParamIdent(ParamIdent*p) {} //abstract class

void PrintAbsyn::visitParamIdentUpperIdent(ParamIdentUpperIdent* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitIdent(p->upperident_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitParamIdentLowerIdent(ParamIdentLowerIdent* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitIdent(p->lowerident_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitListNamespaceIdent(ListNamespaceIdent *listnamespaceident)
{
  for (ListNamespaceIdent::const_iterator i = listnamespaceident->begin() ; i != listnamespaceident->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listnamespaceident->end() - 1) render("::");
  }
}void PrintAbsyn::visitListGenericParameter(ListGenericParameter *listgenericparameter)
{
  for (ListGenericParameter::const_iterator i = listgenericparameter->begin() ; i != listgenericparameter->end() ; ++i)
  {
    visitGenericParameter(*i) ;
    if (i != listgenericparameter->end() - 1) render("");
  }
}void PrintAbsyn::visitType(Type*p) {} //abstract class

void PrintAbsyn::visitGenericPlaceholder(GenericPlaceholder* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitIdent(p->genericparameter_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitBaseType(BaseType* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitIdent(p->upperident_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitGenericType(GenericType* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitIdent(p->upperident_);
  _i_ = 0; p->parametrictype_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitParametricType(ParametricType*p) {} //abstract class

void PrintAbsyn::visitParameter(Parameter* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('<');
  _i_ = 0; p->type_->accept(this);
  render('>');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitListType(ListType *listtype)
{
  for (ListType::const_iterator i = listtype->begin() ; i != listtype->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listtype->end() - 1) render(',');
  }
}void PrintAbsyn::visitBlock(Block*p) {} //abstract class

void PrintAbsyn::visitNoOp(NoOp* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('(');
  render(')');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitNamespace(Namespace* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('(');
  render("namespace");
  if(p->listnamespaceident_) {_i_ = 0; p->listnamespaceident_->accept(this);}  if(p->listblock_) {_i_ = 0; p->listblock_->accept(this);}  render(')');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitFunctor(Functor* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('(');
  render("functor");
  visitIdent(p->lowerident_);
  if(p->listfunctordecl_) {_i_ = 0; p->listfunctordecl_->accept(this);}  render(')');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitListFunctorDecl(ListFunctorDecl *listfunctordecl)
{
  for (ListFunctorDecl::const_iterator i = listfunctordecl->begin() ; i != listfunctordecl->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listfunctordecl->end() - 1) render("");
  }
}void PrintAbsyn::visitFunctorDecl(FunctorDecl*p) {} //abstract class

void PrintAbsyn::visitFunctorComponent(FunctorComponent* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('(');
  _i_ = 0; p->functorspec_->accept(this);
  render(')');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitFunctorSpec(FunctorSpec*p) {} //abstract class

void PrintAbsyn::visitGeneric(Generic* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render("generic");
  if(p->listgenericparameter_) {_i_ = 0; p->listgenericparameter_->accept(this);}
  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitSatisfies(Satisfies* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render("satisfies");
  if(p->listtype_) {_i_ = 0; p->listtype_->accept(this);}
  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitRequires(Requires* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render("requires");
  if(p->listtype_) {_i_ = 0; p->listtype_->accept(this);}
  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitFn(Fn* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render("fn");
  _i_ = 0; p->fndecl_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitFnDecl(FnDecl*p) {} //abstract class

void PrintAbsyn::visitFnParams(FnParams* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('(');
  if(p->listformalargument_) {_i_ = 0; p->listformalargument_->accept(this);}  render(')');
  if(p->liststatement_) {_i_ = 0; p->liststatement_->accept(this);}
  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitListFormalArgument(ListFormalArgument *listformalargument)
{
  for (ListFormalArgument::const_iterator i = listformalargument->begin() ; i != listformalargument->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listformalargument->end() - 1) render(',');
  }
}void PrintAbsyn::visitFormalArgument(FormalArgument*p) {} //abstract class

void PrintAbsyn::visitValueParam(ValueParam* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->paramident_->accept(this);
  render(':');
  _i_ = 0; p->type_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitGenericParam(GenericParam* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->paramident_->accept(this);
  render(':');
  if(p->listformalargument_) {_i_ = 0; p->listformalargument_->accept(this);}  render("=>");
  _i_ = 0; p->type_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitInformalParam(InformalParam*p) {} //abstract class

void PrintAbsyn::visitFnCallExpr(FnCallExpr* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitListInformalParam(ListInformalParam *listinformalparam)
{
  for (ListInformalParam::const_iterator i = listinformalparam->begin() ; i != listinformalparam->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listinformalparam->end() - 1) render(',');
  }
}void PrintAbsyn::visitListStatement(ListStatement *liststatement)
{
  for (ListStatement::const_iterator i = liststatement->begin() ; i != liststatement->end() ; ++i)
  {
    (*i)->accept(this);
    render("");
  }
}void PrintAbsyn::visitExpression(Expression*p) {} //abstract class

void PrintAbsyn::visitValueOrRef(ValueOrRef* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->paramident_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitIntLiteral(IntLiteral* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitInteger(p->integer_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitRealLiteral(RealLiteral* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitDouble(p->double_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitStringLiteral(StringLiteral* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitString(p->string_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitCharLiteral(CharLiteral* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  visitChar(p->char_);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitFnLiteral(FnLiteral* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  render('(');
  render("fn");
  _i_ = 0; p->fndecl_->accept(this);
  render(')');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitDotOperator(DotOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render('.');
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitPipeOperator(PipeOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render('|');
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitCallOperator(CallOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_->accept(this);
  render('(');
  if(p->listinformalparam_) {_i_ = 0; p->listinformalparam_->accept(this);}  render(')');

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitLeftShiftOperator(LeftShiftOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render("<<");
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitRightShiftOperator(RightShiftOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render(">>");
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitMultOperator(MultOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render('*');
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitDivisionOperator(DivisionOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render('/');
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitPlusOperator(PlusOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render('+');
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitMinusOperator(MinusOperator* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render('-');
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitStatement(Statement*p) {} //abstract class

void PrintAbsyn::visitDeclaration(Declaration* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->formalargument_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitExpr(Expr* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitAssignment(Assignment* p)
{
  int oldi = _i_;
  if (oldi > 0) render(_L_PAREN);

  _i_ = 0; p->expression_1->accept(this);
  render('=');
  _i_ = 0; p->expression_2->accept(this);

  if (oldi > 0) render(_R_PAREN);

  _i_ = oldi;
}

void PrintAbsyn::visitInteger(Integer i)
{
  char tmp[16];
  sprintf(tmp, "%d", i);
  bufAppend(tmp);
}
void PrintAbsyn::visitDouble(Double d)
{
  char tmp[16];
  sprintf(tmp, "%g", d);
  bufAppend(tmp);
}
void PrintAbsyn::visitChar(Char c)
{
  bufAppend('\'');
  bufAppend(c);
  bufAppend('\'');
}
void PrintAbsyn::visitString(String s)
{
  bufAppend('\"');
  bufAppend(s);
  bufAppend('\"');
}
void PrintAbsyn::visitIdent(String s)
{
  render(s);
}

void PrintAbsyn::visitGenericParameter(String s)
{
  render(s);
}


void PrintAbsyn::visitUpperIdent(String s)
{
  render(s);
}


void PrintAbsyn::visitLowerIdent(String s)
{
  render(s);
}


ShowAbsyn::ShowAbsyn(void)
{
  buf_ = 0;
  bufReset();
}

ShowAbsyn::~ShowAbsyn(void)
{
}

char* ShowAbsyn::show(Visitable *v)
{
  bufReset();
  v->accept(this);
  return buf_;
}
void ShowAbsyn::visitGlobal(Global* p) {} //abstract class

void ShowAbsyn::visitTopLevel(TopLevel* p)
{
  bufAppend('(');
  bufAppend("TopLevel");
  bufAppend(' ');
  bufAppend('[');
  if (p->listtoplevelblock_)  p->listtoplevelblock_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitListTopLevelBlock(ListTopLevelBlock *listtoplevelblock)
{
  for (ListTopLevelBlock::const_iterator i = listtoplevelblock->begin() ; i != listtoplevelblock->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listtoplevelblock->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitTopLevelBlock(TopLevelBlock* p) {} //abstract class

void ShowAbsyn::visitBlockAtTop(BlockAtTop* p)
{
  bufAppend('(');
  bufAppend("BlockAtTop");
  bufAppend(' ');
  bufAppend('[');
  if (p->block_)  p->block_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitMain(Main* p)
{
  bufAppend('(');
  bufAppend("Main");
  bufAppend(' ');
  bufAppend('[');
  if (p->fndecl_)  p->fndecl_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend(')');
}
void ShowAbsyn::visitListBlock(ListBlock *listblock)
{
  for (ListBlock::const_iterator i = listblock->begin() ; i != listblock->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listblock->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitNamespaceIdent(NamespaceIdent* p) {} //abstract class

void ShowAbsyn::visitNamespaceIdentUpperIdent(NamespaceIdentUpperIdent* p)
{
  bufAppend('(');
  bufAppend("NamespaceIdentUpperIdent");
  bufAppend(' ');
  visitIdent(p->upperident_);
  bufAppend(')');
}
void ShowAbsyn::visitNamespaceIdentLowerIdent(NamespaceIdentLowerIdent* p)
{
  bufAppend('(');
  bufAppend("NamespaceIdentLowerIdent");
  bufAppend(' ');
  visitIdent(p->lowerident_);
  bufAppend(')');
}
void ShowAbsyn::visitParamIdent(ParamIdent* p) {} //abstract class

void ShowAbsyn::visitParamIdentUpperIdent(ParamIdentUpperIdent* p)
{
  bufAppend('(');
  bufAppend("ParamIdentUpperIdent");
  bufAppend(' ');
  visitIdent(p->upperident_);
  bufAppend(')');
}
void ShowAbsyn::visitParamIdentLowerIdent(ParamIdentLowerIdent* p)
{
  bufAppend('(');
  bufAppend("ParamIdentLowerIdent");
  bufAppend(' ');
  visitIdent(p->lowerident_);
  bufAppend(')');
}
void ShowAbsyn::visitListNamespaceIdent(ListNamespaceIdent *listnamespaceident)
{
  for (ListNamespaceIdent::const_iterator i = listnamespaceident->begin() ; i != listnamespaceident->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listnamespaceident->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitListGenericParameter(ListGenericParameter *listgenericparameter)
{
  for (ListGenericParameter::const_iterator i = listgenericparameter->begin() ; i != listgenericparameter->end() ; ++i)
  {
    visitGenericParameter(*i) ;
    if (i != listgenericparameter->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitType(Type* p) {} //abstract class

void ShowAbsyn::visitGenericPlaceholder(GenericPlaceholder* p)
{
  bufAppend('(');
  bufAppend("GenericPlaceholder");
  bufAppend(' ');
  visitIdent(p->genericparameter_);
  bufAppend(')');
}
void ShowAbsyn::visitBaseType(BaseType* p)
{
  bufAppend('(');
  bufAppend("BaseType");
  bufAppend(' ');
  visitIdent(p->upperident_);
  bufAppend(')');
}
void ShowAbsyn::visitGenericType(GenericType* p)
{
  bufAppend('(');
  bufAppend("GenericType");
  bufAppend(' ');
  visitIdent(p->upperident_);
  bufAppend(' ');
  bufAppend('[');
  if (p->parametrictype_)  p->parametrictype_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitParametricType(ParametricType* p) {} //abstract class

void ShowAbsyn::visitParameter(Parameter* p)
{
  bufAppend('(');
  bufAppend("Parameter");
  bufAppend(' ');
  bufAppend('[');
  if (p->type_)  p->type_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend(')');
}
void ShowAbsyn::visitListType(ListType *listtype)
{
  for (ListType::const_iterator i = listtype->begin() ; i != listtype->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listtype->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitBlock(Block* p) {} //abstract class

void ShowAbsyn::visitNoOp(NoOp* p)
{
  bufAppend("NoOp");
}
void ShowAbsyn::visitNamespace(Namespace* p)
{
  bufAppend('(');
  bufAppend("Namespace");
  bufAppend(' ');
  bufAppend('[');
  if (p->listnamespaceident_)  p->listnamespaceident_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend('[');
  if (p->listblock_)  p->listblock_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend(')');
}
void ShowAbsyn::visitFunctor(Functor* p)
{
  bufAppend('(');
  bufAppend("Functor");
  bufAppend(' ');
  visitIdent(p->lowerident_);
  bufAppend(' ');
  bufAppend('[');
  if (p->listfunctordecl_)  p->listfunctordecl_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend(')');
}
void ShowAbsyn::visitListFunctorDecl(ListFunctorDecl *listfunctordecl)
{
  for (ListFunctorDecl::const_iterator i = listfunctordecl->begin() ; i != listfunctordecl->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listfunctordecl->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitFunctorDecl(FunctorDecl* p) {} //abstract class

void ShowAbsyn::visitFunctorComponent(FunctorComponent* p)
{
  bufAppend('(');
  bufAppend("FunctorComponent");
  bufAppend(' ');
  bufAppend('[');
  if (p->functorspec_)  p->functorspec_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend(')');
}
void ShowAbsyn::visitFunctorSpec(FunctorSpec* p) {} //abstract class

void ShowAbsyn::visitGeneric(Generic* p)
{
  bufAppend('(');
  bufAppend("Generic");
  bufAppend(' ');
  bufAppend('[');
  if (p->listgenericparameter_)  p->listgenericparameter_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitSatisfies(Satisfies* p)
{
  bufAppend('(');
  bufAppend("Satisfies");
  bufAppend(' ');
  bufAppend('[');
  if (p->listtype_)  p->listtype_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitRequires(Requires* p)
{
  bufAppend('(');
  bufAppend("Requires");
  bufAppend(' ');
  bufAppend('[');
  if (p->listtype_)  p->listtype_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitFn(Fn* p)
{
  bufAppend('(');
  bufAppend("Fn");
  bufAppend(' ');
  bufAppend('[');
  if (p->fndecl_)  p->fndecl_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitFnDecl(FnDecl* p) {} //abstract class

void ShowAbsyn::visitFnParams(FnParams* p)
{
  bufAppend('(');
  bufAppend("FnParams");
  bufAppend(' ');
  bufAppend('[');
  if (p->listformalargument_)  p->listformalargument_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend('[');
  if (p->liststatement_)  p->liststatement_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitListFormalArgument(ListFormalArgument *listformalargument)
{
  for (ListFormalArgument::const_iterator i = listformalargument->begin() ; i != listformalargument->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listformalargument->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitFormalArgument(FormalArgument* p) {} //abstract class

void ShowAbsyn::visitValueParam(ValueParam* p)
{
  bufAppend('(');
  bufAppend("ValueParam");
  bufAppend(' ');
  bufAppend('[');
  if (p->paramident_)  p->paramident_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend('[');
  if (p->type_)  p->type_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitGenericParam(GenericParam* p)
{
  bufAppend('(');
  bufAppend("GenericParam");
  bufAppend(' ');
  bufAppend('[');
  if (p->paramident_)  p->paramident_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend('[');
  if (p->listformalargument_)  p->listformalargument_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend('[');
  if (p->type_)  p->type_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitInformalParam(InformalParam* p) {} //abstract class

void ShowAbsyn::visitFnCallExpr(FnCallExpr* p)
{
  bufAppend('(');
  bufAppend("FnCallExpr");
  bufAppend(' ');
  bufAppend('[');
  if (p->expression_)  p->expression_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitListInformalParam(ListInformalParam *listinformalparam)
{
  for (ListInformalParam::const_iterator i = listinformalparam->begin() ; i != listinformalparam->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != listinformalparam->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitListStatement(ListStatement *liststatement)
{
  for (ListStatement::const_iterator i = liststatement->begin() ; i != liststatement->end() ; ++i)
  {
    (*i)->accept(this);
    if (i != liststatement->end() - 1) bufAppend(", ");
  }
}

void ShowAbsyn::visitExpression(Expression* p) {} //abstract class

void ShowAbsyn::visitValueOrRef(ValueOrRef* p)
{
  bufAppend('(');
  bufAppend("ValueOrRef");
  bufAppend(' ');
  bufAppend('[');
  if (p->paramident_)  p->paramident_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitIntLiteral(IntLiteral* p)
{
  bufAppend('(');
  bufAppend("IntLiteral");
  bufAppend(' ');
  visitInteger(p->integer_);
  bufAppend(')');
}
void ShowAbsyn::visitRealLiteral(RealLiteral* p)
{
  bufAppend('(');
  bufAppend("RealLiteral");
  bufAppend(' ');
  visitDouble(p->double_);
  bufAppend(')');
}
void ShowAbsyn::visitStringLiteral(StringLiteral* p)
{
  bufAppend('(');
  bufAppend("StringLiteral");
  bufAppend(' ');
  visitString(p->string_);
  bufAppend(')');
}
void ShowAbsyn::visitCharLiteral(CharLiteral* p)
{
  bufAppend('(');
  bufAppend("CharLiteral");
  bufAppend(' ');
  visitChar(p->char_);
  bufAppend(')');
}
void ShowAbsyn::visitFnLiteral(FnLiteral* p)
{
  bufAppend('(');
  bufAppend("FnLiteral");
  bufAppend(' ');
  bufAppend('[');
  if (p->fndecl_)  p->fndecl_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend(')');
}
void ShowAbsyn::visitDotOperator(DotOperator* p)
{
  bufAppend('(');
  bufAppend("DotOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitPipeOperator(PipeOperator* p)
{
  bufAppend('(');
  bufAppend("PipeOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitCallOperator(CallOperator* p)
{
  bufAppend('(');
  bufAppend("CallOperator");
  bufAppend(' ');
  bufAppend('[');
  if (p->expression_)  p->expression_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend('[');
  if (p->listinformalparam_)  p->listinformalparam_->accept(this);
  bufAppend(']');
  bufAppend(' ');
  bufAppend(')');
}
void ShowAbsyn::visitLeftShiftOperator(LeftShiftOperator* p)
{
  bufAppend('(');
  bufAppend("LeftShiftOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitRightShiftOperator(RightShiftOperator* p)
{
  bufAppend('(');
  bufAppend("RightShiftOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitMultOperator(MultOperator* p)
{
  bufAppend('(');
  bufAppend("MultOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitDivisionOperator(DivisionOperator* p)
{
  bufAppend('(');
  bufAppend("DivisionOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitPlusOperator(PlusOperator* p)
{
  bufAppend('(');
  bufAppend("PlusOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitMinusOperator(MinusOperator* p)
{
  bufAppend('(');
  bufAppend("MinusOperator");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitStatement(Statement* p) {} //abstract class

void ShowAbsyn::visitDeclaration(Declaration* p)
{
  bufAppend('(');
  bufAppend("Declaration");
  bufAppend(' ');
  bufAppend('[');
  if (p->formalargument_)  p->formalargument_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitExpr(Expr* p)
{
  bufAppend('(');
  bufAppend("Expr");
  bufAppend(' ');
  bufAppend('[');
  if (p->expression_)  p->expression_->accept(this);
  bufAppend(']');
  bufAppend(')');
}
void ShowAbsyn::visitAssignment(Assignment* p)
{
  bufAppend('(');
  bufAppend("Assignment");
  bufAppend(' ');
  p->expression_1->accept(this);
  bufAppend(' ');
  p->expression_2->accept(this);
  bufAppend(')');
}
void ShowAbsyn::visitInteger(Integer i)
{
  char tmp[16];
  sprintf(tmp, "%d", i);
  bufAppend(tmp);
}
void ShowAbsyn::visitDouble(Double d)
{
  char tmp[16];
  sprintf(tmp, "%g", d);
  bufAppend(tmp);
}
void ShowAbsyn::visitChar(Char c)
{
  bufAppend('\'');
  bufAppend(c);
  bufAppend('\'');
}
void ShowAbsyn::visitString(String s)
{
  bufAppend('\"');
  bufAppend(s);
  bufAppend('\"');
}
void ShowAbsyn::visitIdent(String s)
{
  bufAppend('\"');
  bufAppend(s);
  bufAppend('\"');
}

void ShowAbsyn::visitGenericParameter(String s)
{
  bufAppend('\"');
  bufAppend(s);
  bufAppend('\"');
}


void ShowAbsyn::visitUpperIdent(String s)
{
  bufAppend('\"');
  bufAppend(s);
  bufAppend('\"');
}


void ShowAbsyn::visitLowerIdent(String s)
{
  bufAppend('\"');
  bufAppend(s);
  bufAppend('\"');
}



