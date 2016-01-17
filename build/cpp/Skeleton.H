#ifndef SKELETON_HEADER
#define SKELETON_HEADER
/* You might want to change the above name. */

#include "Absyn.H"


class Skeleton : public Visitor
{
public:
  void visitGlobal(Global* p);
  void visitTopLevelBlock(TopLevelBlock* p);
  void visitNamespaceIdent(NamespaceIdent* p);
  void visitParamIdent(ParamIdent* p);
  void visitType(Type* p);
  void visitParametricType(ParametricType* p);
  void visitBlock(Block* p);
  void visitFunctorDecl(FunctorDecl* p);
  void visitFunctorSpec(FunctorSpec* p);
  void visitFnDecl(FnDecl* p);
  void visitFormalArgument(FormalArgument* p);
  void visitInformalParam(InformalParam* p);
  void visitExpression(Expression* p);
  void visitStatement(Statement* p);
  void visitTopLevel(TopLevel* p);
  void visitBlockAtTop(BlockAtTop* p);
  void visitNamespaceIdentUpperIdent(NamespaceIdentUpperIdent* p);
  void visitNamespaceIdentLowerIdent(NamespaceIdentLowerIdent* p);
  void visitParamIdentUpperIdent(ParamIdentUpperIdent* p);
  void visitParamIdentLowerIdent(ParamIdentLowerIdent* p);
  void visitGenericPlaceholder(GenericPlaceholder* p);
  void visitBaseType(BaseType* p);
  void visitGenericType(GenericType* p);
  void visitParameter(Parameter* p);
  void visitNoOp(NoOp* p);
  void visitMain(Main* p);
  void visitNamespace(Namespace* p);
  void visitFunctor(Functor* p);
  void visitFunctorComponent(FunctorComponent* p);
  void visitGeneric(Generic* p);
  void visitSatisfies(Satisfies* p);
  void visitRequires(Requires* p);
  void visitFn(Fn* p);
  void visitFnParams(FnParams* p);
  void visitValueParam(ValueParam* p);
  void visitGenericParam(GenericParam* p);
  void visitFnCallExpr(FnCallExpr* p);
  void visitDeclaration(Declaration* p);
  void visitExpr(Expr* p);
  void visitAssignment(Assignment* p);
  void visitValueOrRef(ValueOrRef* p);
  void visitIntLiteral(IntLiteral* p);
  void visitRealLiteral(RealLiteral* p);
  void visitStringLiteral(StringLiteral* p);
  void visitCharLiteral(CharLiteral* p);
  void visitFnLiteral(FnLiteral* p);
  void visitDotOperator(DotOperator* p);
  void visitPipeOperator(PipeOperator* p);
  void visitCallOperator(CallOperator* p);
  void visitLeftShiftOperator(LeftShiftOperator* p);
  void visitRightShiftOperator(RightShiftOperator* p);
  void visitMultOperator(MultOperator* p);
  void visitDivisionOperator(DivisionOperator* p);
  void visitPlusOperator(PlusOperator* p);
  void visitMinusOperator(MinusOperator* p);
  void visitListTopLevelBlock(ListTopLevelBlock* p);
  void visitListBlock(ListBlock* p);
  void visitListNamespaceIdent(ListNamespaceIdent* p);
  void visitListGenericParameter(ListGenericParameter* p);
  void visitListType(ListType* p);
  void visitListFunctorDecl(ListFunctorDecl* p);
  void visitListFormalArgument(ListFormalArgument* p);
  void visitListInformalParam(ListInformalParam* p);
  void visitListStatement(ListStatement* p);

  void visit"GenericParameter"("GenericParameter" x);
  void visit"UpperIdent"("UpperIdent" x);
  void visit"LowerIdent"("LowerIdent" x);
  void visit"Integer"("Integer" x);
  void visit"Char"("Char" x);
  void visit"Double"("Double" x);
  void visit"String"("String" x);
  void visit"Ident"("Ident" x);

};


#endif
