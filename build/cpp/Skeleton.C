/*** BNFC-Generated Visitor Design Pattern Skeleton. ***/
/* This implements the common visitor design pattern.
   Note that this method uses Visitor-traversal of lists, so
   List->accept() does NOT traverse the list. This allows different
   algorithms to use context information differently. */

#include "Skeleton.H"



void Skeleton::visitGlobal(Global* t) {} //abstract class
void Skeleton::visitTopLevelBlock(TopLevelBlock* t) {} //abstract class
void Skeleton::visitNamespaceIdent(NamespaceIdent* t) {} //abstract class
void Skeleton::visitParamIdent(ParamIdent* t) {} //abstract class
void Skeleton::visitType(Type* t) {} //abstract class
void Skeleton::visitParametricType(ParametricType* t) {} //abstract class
void Skeleton::visitBlock(Block* t) {} //abstract class
void Skeleton::visitFunctorDecl(FunctorDecl* t) {} //abstract class
void Skeleton::visitFunctorSpec(FunctorSpec* t) {} //abstract class
void Skeleton::visitFnDecl(FnDecl* t) {} //abstract class
void Skeleton::visitFormalArgument(FormalArgument* t) {} //abstract class
void Skeleton::visitInformalParam(InformalParam* t) {} //abstract class
void Skeleton::visitExpression(Expression* t) {} //abstract class
void Skeleton::visitStatement(Statement* t) {} //abstract class

void Skeleton::visitTopLevel(TopLevel *toplevel)
{
  /* Code For TopLevel Goes Here */

  toplevel->listtoplevelblock_->accept(this);

}

void Skeleton::visitBlockAtTop(BlockAtTop *blockattop)
{
  /* Code For BlockAtTop Goes Here */

  blockattop->block_->accept(this);

}

void Skeleton::visitMain(Main *main)
{
  /* Code For Main Goes Here */

  main->fndecl_->accept(this);

}

void Skeleton::visitNamespaceIdentUpperIdent(NamespaceIdentUpperIdent *namespaceidentupperident)
{
  /* Code For NamespaceIdentUpperIdent Goes Here */

  visitUpperIdent(namespaceidentupperident->upperident_);

}

void Skeleton::visitNamespaceIdentLowerIdent(NamespaceIdentLowerIdent *namespaceidentlowerident)
{
  /* Code For NamespaceIdentLowerIdent Goes Here */

  visitLowerIdent(namespaceidentlowerident->lowerident_);

}

void Skeleton::visitParamIdentUpperIdent(ParamIdentUpperIdent *paramidentupperident)
{
  /* Code For ParamIdentUpperIdent Goes Here */

  visitUpperIdent(paramidentupperident->upperident_);

}

void Skeleton::visitParamIdentLowerIdent(ParamIdentLowerIdent *paramidentlowerident)
{
  /* Code For ParamIdentLowerIdent Goes Here */

  visitLowerIdent(paramidentlowerident->lowerident_);

}

void Skeleton::visitGenericPlaceholder(GenericPlaceholder *genericplaceholder)
{
  /* Code For GenericPlaceholder Goes Here */

  visitGenericParameter(genericplaceholder->genericparameter_);

}

void Skeleton::visitBaseType(BaseType *basetype)
{
  /* Code For BaseType Goes Here */

  visitUpperIdent(basetype->upperident_);

}

void Skeleton::visitGenericType(GenericType *generictype)
{
  /* Code For GenericType Goes Here */

  visitUpperIdent(generictype->upperident_);
  generictype->parametrictype_->accept(this);

}

void Skeleton::visitParameter(Parameter *parameter)
{
  /* Code For Parameter Goes Here */

  parameter->type_->accept(this);

}

void Skeleton::visitNoOp(NoOp *noop)
{
  /* Code For NoOp Goes Here */


}

void Skeleton::visitNamespace(Namespace *namespace)
{
  /* Code For Namespace Goes Here */

  namespace->listnamespaceident_->accept(this);
  namespace->listblock_->accept(this);

}

void Skeleton::visitFunctor(Functor *functor)
{
  /* Code For Functor Goes Here */

  visitLowerIdent(functor->lowerident_);
  functor->listfunctordecl_->accept(this);

}

void Skeleton::visitFunctorComponent(FunctorComponent *functorcomponent)
{
  /* Code For FunctorComponent Goes Here */

  functorcomponent->functorspec_->accept(this);

}

void Skeleton::visitGeneric(Generic *generic)
{
  /* Code For Generic Goes Here */

  generic->listgenericparameter_->accept(this);

}

void Skeleton::visitSatisfies(Satisfies *satisfies)
{
  /* Code For Satisfies Goes Here */

  satisfies->listtype_->accept(this);

}

void Skeleton::visitRequires(Requires *requires)
{
  /* Code For Requires Goes Here */

  requires->listtype_->accept(this);

}

void Skeleton::visitFn(Fn *fn)
{
  /* Code For Fn Goes Here */

  fn->fndecl_->accept(this);

}

void Skeleton::visitFnParams(FnParams *fnparams)
{
  /* Code For FnParams Goes Here */

  fnparams->listformalargument_->accept(this);
  fnparams->liststatement_->accept(this);

}

void Skeleton::visitValueParam(ValueParam *valueparam)
{
  /* Code For ValueParam Goes Here */

  valueparam->paramident_->accept(this);
  valueparam->type_->accept(this);

}

void Skeleton::visitGenericParam(GenericParam *genericparam)
{
  /* Code For GenericParam Goes Here */

  genericparam->paramident_->accept(this);
  genericparam->listformalargument_->accept(this);
  genericparam->type_->accept(this);

}

void Skeleton::visitFnCallExpr(FnCallExpr *fncallexpr)
{
  /* Code For FnCallExpr Goes Here */

  fncallexpr->expression_->accept(this);

}

void Skeleton::visitValueOrRef(ValueOrRef *valueorref)
{
  /* Code For ValueOrRef Goes Here */

  valueorref->paramident_->accept(this);

}

void Skeleton::visitIntLiteral(IntLiteral *intliteral)
{
  /* Code For IntLiteral Goes Here */

  visitInteger(intliteral->integer_);

}

void Skeleton::visitRealLiteral(RealLiteral *realliteral)
{
  /* Code For RealLiteral Goes Here */

  visitDouble(realliteral->double_);

}

void Skeleton::visitStringLiteral(StringLiteral *stringliteral)
{
  /* Code For StringLiteral Goes Here */

  visitString(stringliteral->string_);

}

void Skeleton::visitCharLiteral(CharLiteral *charliteral)
{
  /* Code For CharLiteral Goes Here */

  visitChar(charliteral->char_);

}

void Skeleton::visitFnLiteral(FnLiteral *fnliteral)
{
  /* Code For FnLiteral Goes Here */

  fnliteral->fndecl_->accept(this);

}

void Skeleton::visitDotOperator(DotOperator *dotoperator)
{
  /* Code For DotOperator Goes Here */

  dotoperator->expression_1->accept(this);
  dotoperator->expression_2->accept(this);

}

void Skeleton::visitPipeOperator(PipeOperator *pipeoperator)
{
  /* Code For PipeOperator Goes Here */

  pipeoperator->expression_1->accept(this);
  pipeoperator->expression_2->accept(this);

}

void Skeleton::visitCallOperator(CallOperator *calloperator)
{
  /* Code For CallOperator Goes Here */

  calloperator->expression_->accept(this);
  calloperator->listinformalparam_->accept(this);

}

void Skeleton::visitLeftShiftOperator(LeftShiftOperator *leftshiftoperator)
{
  /* Code For LeftShiftOperator Goes Here */

  leftshiftoperator->expression_1->accept(this);
  leftshiftoperator->expression_2->accept(this);

}

void Skeleton::visitRightShiftOperator(RightShiftOperator *rightshiftoperator)
{
  /* Code For RightShiftOperator Goes Here */

  rightshiftoperator->expression_1->accept(this);
  rightshiftoperator->expression_2->accept(this);

}

void Skeleton::visitMultOperator(MultOperator *multoperator)
{
  /* Code For MultOperator Goes Here */

  multoperator->expression_1->accept(this);
  multoperator->expression_2->accept(this);

}

void Skeleton::visitDivisionOperator(DivisionOperator *divisionoperator)
{
  /* Code For DivisionOperator Goes Here */

  divisionoperator->expression_1->accept(this);
  divisionoperator->expression_2->accept(this);

}

void Skeleton::visitPlusOperator(PlusOperator *plusoperator)
{
  /* Code For PlusOperator Goes Here */

  plusoperator->expression_1->accept(this);
  plusoperator->expression_2->accept(this);

}

void Skeleton::visitMinusOperator(MinusOperator *minusoperator)
{
  /* Code For MinusOperator Goes Here */

  minusoperator->expression_1->accept(this);
  minusoperator->expression_2->accept(this);

}

void Skeleton::visitDeclaration(Declaration *declaration)
{
  /* Code For Declaration Goes Here */

  declaration->formalargument_->accept(this);

}

void Skeleton::visitExpr(Expr *expr)
{
  /* Code For Expr Goes Here */

  expr->expression_->accept(this);

}

void Skeleton::visitAssignment(Assignment *assignment)
{
  /* Code For Assignment Goes Here */

  assignment->expression_1->accept(this);
  assignment->expression_2->accept(this);

}


void Skeleton::visitListTopLevelBlock(ListTopLevelBlock* listtoplevelblock)
{
  for (ListTopLevelBlock::iterator i = listtoplevelblock->begin() ; i != listtoplevelblock->end() ; ++i)
  {
    (*i)->accept(this);
  }
}

void Skeleton::visitListBlock(ListBlock* listblock)
{
  for (ListBlock::iterator i = listblock->begin() ; i != listblock->end() ; ++i)
  {
    (*i)->accept(this);
  }
}

void Skeleton::visitListNamespaceIdent(ListNamespaceIdent* listnamespaceident)
{
  for (ListNamespaceIdent::iterator i = listnamespaceident->begin() ; i != listnamespaceident->end() ; ++i)
  {
    (*i)->accept(this);
  }
}

void Skeleton::visitListGenericParameter(ListGenericParameter* listgenericparameter)
{
  for (ListGenericParameter::iterator i = listgenericparameter->begin() ; i != listgenericparameter->end() ; ++i)
  {
    visitGenericParameter(*i) ;
  }
}

void Skeleton::visitListType(ListType* listtype)
{
  for (ListType::iterator i = listtype->begin() ; i != listtype->end() ; ++i)
  {
    (*i)->accept(this);
  }
}

void Skeleton::visitListFunctorDecl(ListFunctorDecl* listfunctordecl)
{
  for (ListFunctorDecl::iterator i = listfunctordecl->begin() ; i != listfunctordecl->end() ; ++i)
  {
    (*i)->accept(this);
  }
}

void Skeleton::visitListFormalArgument(ListFormalArgument* listformalargument)
{
  for (ListFormalArgument::iterator i = listformalargument->begin() ; i != listformalargument->end() ; ++i)
  {
    (*i)->accept(this);
  }
}

void Skeleton::visitListInformalParam(ListInformalParam* listinformalparam)
{
  for (ListInformalParam::iterator i = listinformalparam->begin() ; i != listinformalparam->end() ; ++i)
  {
    (*i)->accept(this);
  }
}

void Skeleton::visitListStatement(ListStatement* liststatement)
{
  for (ListStatement::iterator i = liststatement->begin() ; i != liststatement->end() ; ++i)
  {
    (*i)->accept(this);
  }
}


void Skeleton::visitGenericParameter(GenericParameter x)
{
  /* Code for GenericParameter Goes Here */
}

void Skeleton::visitUpperIdent(UpperIdent x)
{
  /* Code for UpperIdent Goes Here */
}

void Skeleton::visitLowerIdent(LowerIdent x)
{
  /* Code for LowerIdent Goes Here */
}

void Skeleton::visitInteger(Integer x)
{
  /* Code for Integer Goes Here */
}

void Skeleton::visitChar(Char x)
{
  /* Code for Char Goes Here */
}

void Skeleton::visitDouble(Double x)
{
  /* Code for Double Goes Here */
}

void Skeleton::visitString(String x)
{
  /* Code for String Goes Here */
}

void Skeleton::visitIdent(Ident x)
{
  /* Code for Ident Goes Here */
}



