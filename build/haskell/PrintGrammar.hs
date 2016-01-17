{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}
module PrintGrammar where

-- pretty-printer generated by the BNF converter

import AbsGrammar
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : "," :ts -> showString t . space "," . rend i ts
    t  : ")" :ts -> showString t . showChar ')' . rend i ts
    t  : "]" :ts -> showString t . showChar ']' . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else (' ':s))

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: Int -> [a] -> Doc
  prtList i = concatD . map (prt i)

instance Print a => Print [a] where
  prt = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList _ s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)



instance Print GenericParameter where
  prt _ (GenericParameter i) = doc (showString ( i))
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])

instance Print UpperIdent where
  prt _ (UpperIdent i) = doc (showString ( i))


instance Print LowerIdent where
  prt _ (LowerIdent i) = doc (showString ( i))



instance Print Global where
  prt i e = case e of
    TopLevel toplevelblocks -> prPrec i 0 (concatD [prt 0 toplevelblocks])

instance Print TopLevelBlock where
  prt i e = case e of
    BlockAtTop block -> prPrec i 0 (concatD [prt 0 block])
    Main fndecl -> prPrec i 0 (concatD [doc (showString "("), doc (showString "main"), prt 0 fndecl, doc (showString ")")])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print NamespaceIdent where
  prt i e = case e of
    NamespaceIdentUpperIdent upperident -> prPrec i 0 (concatD [prt 0 upperident])
    NamespaceIdentLowerIdent lowerident -> prPrec i 0 (concatD [prt 0 lowerident])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString "::"), prt 0 xs])
instance Print ParamIdent where
  prt i e = case e of
    ParamIdentUpperIdent upperident -> prPrec i 0 (concatD [prt 0 upperident])
    ParamIdentLowerIdent lowerident -> prPrec i 0 (concatD [prt 0 lowerident])

instance Print Type where
  prt i e = case e of
    GenericPlaceholder genericparameter -> prPrec i 0 (concatD [prt 0 genericparameter])
    BaseType upperident -> prPrec i 0 (concatD [prt 0 upperident])
    GenericType upperident parametrictype -> prPrec i 0 (concatD [prt 0 upperident, prt 0 parametrictype])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print ParametricType where
  prt i e = case e of
    Parameter type_ -> prPrec i 0 (concatD [doc (showString "<"), prt 0 type_, doc (showString ">")])

instance Print Block where
  prt i e = case e of
    NoOp -> prPrec i 0 (concatD [doc (showString "("), doc (showString ")")])
    Namespace namespaceidents blocks -> prPrec i 0 (concatD [doc (showString "("), doc (showString "namespace"), prt 0 namespaceidents, prt 0 blocks, doc (showString ")")])
    Functor lowerident functordecls -> prPrec i 0 (concatD [doc (showString "("), doc (showString "functor"), prt 0 lowerident, prt 0 functordecls, doc (showString ")")])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print FunctorDecl where
  prt i e = case e of
    FunctorComponent functorspec -> prPrec i 0 (concatD [doc (showString "("), prt 0 functorspec, doc (showString ")")])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print FunctorSpec where
  prt i e = case e of
    Generic genericparameters -> prPrec i 0 (concatD [doc (showString "generic"), prt 0 genericparameters])
    Satisfies types -> prPrec i 0 (concatD [doc (showString "satisfies"), prt 0 types])
    Requires types -> prPrec i 0 (concatD [doc (showString "requires"), prt 0 types])
    Fn fndecl -> prPrec i 0 (concatD [doc (showString "fn"), prt 0 fndecl])

instance Print FnDecl where
  prt i e = case e of
    FnParams formalarguments statements -> prPrec i 0 (concatD [doc (showString "("), prt 0 formalarguments, doc (showString ")"), prt 0 statements])

instance Print FormalArgument where
  prt i e = case e of
    ValueParam paramident type_ -> prPrec i 0 (concatD [prt 0 paramident, doc (showString ":"), prt 0 type_])
    GenericParam paramident formalarguments type_ -> prPrec i 0 (concatD [prt 0 paramident, doc (showString ":"), prt 0 formalarguments, doc (showString "=>"), prt 0 type_])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print InformalParam where
  prt i e = case e of
    FnCallExpr expression -> prPrec i 0 (concatD [prt 0 expression])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Expression where
  prt i e = case e of
    ValueOrRef paramident -> prPrec i 0 (concatD [prt 0 paramident])
    IntLiteral n -> prPrec i 0 (concatD [prt 0 n])
    RealLiteral d -> prPrec i 0 (concatD [prt 0 d])
    StringLiteral str -> prPrec i 0 (concatD [prt 0 str])
    CharLiteral c -> prPrec i 0 (concatD [prt 0 c])
    FnLiteral fndecl -> prPrec i 0 (concatD [doc (showString "("), doc (showString "fn"), prt 0 fndecl, doc (showString ")")])
    DotOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "."), prt 0 expression2])
    PipeOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "|"), prt 0 expression2])
    CallOperator expression informalparams -> prPrec i 0 (concatD [prt 0 expression, doc (showString "("), prt 0 informalparams, doc (showString ")")])
    LeftShiftOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "<<"), prt 0 expression2])
    RightShiftOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString ">>"), prt 0 expression2])
    MultOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "*"), prt 0 expression2])
    DivisionOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "/"), prt 0 expression2])
    PlusOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "+"), prt 0 expression2])
    MinusOperator expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "-"), prt 0 expression2])

instance Print Statement where
  prt i e = case e of
    Declaration formalargument -> prPrec i 0 (concatD [prt 0 formalargument])
    Expr expression -> prPrec i 0 (concatD [prt 0 expression])
    Assignment expression1 expression2 -> prPrec i 0 (concatD [prt 0 expression1, doc (showString "="), prt 0 expression2])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
