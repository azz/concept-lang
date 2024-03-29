{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGrammar where
import AbsGrammar
import LexGrammar
import ErrM
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: (Integer) -> (HappyAbsSyn )
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn ) -> (Integer)
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: (Double) -> (HappyAbsSyn )
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn ) -> (Double)
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: (String) -> (HappyAbsSyn )
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn ) -> (String)
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: (Char) -> (HappyAbsSyn )
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn ) -> (Char)
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: (GenericParameter) -> (HappyAbsSyn )
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn ) -> (GenericParameter)
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: (UpperIdent) -> (HappyAbsSyn )
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn ) -> (UpperIdent)
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: (LowerIdent) -> (HappyAbsSyn )
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn ) -> (LowerIdent)
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: (Global) -> (HappyAbsSyn )
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn ) -> (Global)
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: ([TopLevelBlock]) -> (HappyAbsSyn )
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn ) -> ([TopLevelBlock])
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: (TopLevelBlock) -> (HappyAbsSyn )
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn ) -> (TopLevelBlock)
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: ([Block]) -> (HappyAbsSyn )
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn ) -> ([Block])
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: (NamespaceIdent) -> (HappyAbsSyn )
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn ) -> (NamespaceIdent)
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: (ParamIdent) -> (HappyAbsSyn )
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn ) -> (ParamIdent)
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: ([NamespaceIdent]) -> (HappyAbsSyn )
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn ) -> ([NamespaceIdent])
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: ([GenericParameter]) -> (HappyAbsSyn )
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn ) -> ([GenericParameter])
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: (Type) -> (HappyAbsSyn )
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn ) -> (Type)
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: (ParametricType) -> (HappyAbsSyn )
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn ) -> (ParametricType)
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: ([Type]) -> (HappyAbsSyn )
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn ) -> ([Type])
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: (Block) -> (HappyAbsSyn )
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn ) -> (Block)
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: ([FunctorDecl]) -> (HappyAbsSyn )
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> ([FunctorDecl])
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: (FunctorDecl) -> (HappyAbsSyn )
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> (FunctorDecl)
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (FunctorSpec) -> (HappyAbsSyn )
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> (FunctorSpec)
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: (FnDecl) -> (HappyAbsSyn )
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> (FnDecl)
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: ([FormalArgument]) -> (HappyAbsSyn )
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> ([FormalArgument])
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: (FormalArgument) -> (HappyAbsSyn )
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> (FormalArgument)
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: (InformalParam) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> (InformalParam)
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: ([InformalParam]) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> ([InformalParam])
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: ([Statement]) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> ([Statement])
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (Expression) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (Expression)
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (Expression) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (Expression)
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (Expression) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (Expression)
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (Expression) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Expression)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (Expression) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Expression)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (Expression) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (Expression)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (Statement) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (Statement)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x00\x00\x0f\x01\x00\x00\xfb\x00\x18\x01\x00\x00\x00\x00\x03\x00\x00\x00\xf7\x00\x10\x01\xed\x00\x00\x00\x00\x00\x03\x01\x00\x00\x00\x00\x00\x00\x07\x01\xed\x00\xfa\x00\x04\x01\xea\x00\x86\x00\x00\x00\x00\x00\xe5\x00\xdd\x00\xd7\x00\x00\x00\xf1\x00\xd2\x00\x00\x00\x00\x00\x14\x00\x00\x00\xd2\x00\x00\x00\xec\xff\xc7\x00\xc6\x00\xa0\x00\xcc\x00\xcc\x00\x00\x00\x00\x00\x00\x00\xaa\x00\xad\x00\x00\x00\x00\x00\x00\x00\x7d\x00\x00\x00\x00\x00\x00\x00\x3a\x00\x00\x00\x91\x00\x51\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8d\x00\x00\x00\x31\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf9\x00\x00\x00\x00\x00\x00\x00\xcc\x00\x00\x00\xcc\x00\x00\x00\xcc\x00\x00\x00\x7c\x00\x00\x00\x00\x00\x23\x01\x87\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x51\x00\x3f\x01\x3f\x01\x3f\x01\x3f\x01\x3f\x01\x3f\x01\x3f\x01\x3f\x01\x3f\x01\x78\x00\x73\x00\x3f\x01\x67\x00\x00\x00\x00\x00\x00\x00\x00\x00\x51\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xbc\x00\x00\x00\x00\x00\x00\x00\x36\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5b\x00\x48\x00\xe2\x00\x00\x00\x00\x00\x00\x00\x49\x00\x00\x00\x00\x00\x00\x00\x47\x01\x60\x00\x00\x00\x33\x00\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x25\x00\xbb\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb9\x00\x09\x00\x8f\x00\x00\x00\x1e\x00\x17\x00\x51\x01\x4c\x01\x00\x00\x00\x00\x00\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x0c\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x01\x00\x00\x00\x00\x00\x00\x6d\x00\x00\x00\x3c\x00\x00\x00\x0b\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf6\xff\x30\x00\xe0\x00\xd8\x00\xb6\x00\xae\x00\x8c\x00\x84\x00\x62\x00\x5a\x00\x38\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0e\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xf6\xff\x00\x00\xfe\xff\x00\x00\xf7\xff\xf5\xff\xf4\xff\x00\x00\xe2\xff\x00\x00\x00\x00\x00\x00\xf0\xff\xef\xff\xec\xff\xf2\xff\xf9\xff\xf8\xff\x00\x00\xd7\xff\x00\x00\x00\x00\xdf\xff\x00\x00\xee\xff\xed\xff\x00\x00\x00\x00\xd6\xff\xf3\xff\x00\x00\x00\x00\xeb\xff\xf1\xff\x00\x00\xe1\xff\xd7\xff\xce\xff\xd7\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xde\xff\xe0\xff\xe8\xff\xe7\xff\xe4\xff\xdb\xff\xfa\xff\xda\xff\xea\xff\xdc\xff\xd9\xff\xdd\xff\xe7\xff\xd4\xff\x00\x00\xd8\xff\xd5\xff\xca\xff\xc9\xff\xc8\xff\xc7\xff\xcb\xff\xb7\xff\xb6\xff\xcc\xff\xbc\xff\xbb\xff\xba\xff\xb9\xff\xcd\xff\x00\x00\xfd\xff\xfc\xff\xfb\xff\x00\x00\xe6\xff\x00\x00\xe9\xff\x00\x00\xe3\xff\x00\x00\xd3\xff\xcb\xff\x00\x00\x00\x00\xd1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc4\xff\xc1\xff\xb5\xff\xc2\xff\xbf\xff\xc5\xff\xbd\xff\xbe\xff\xc0\xff\xd0\xff\x00\x00\xd2\xff\x00\x00\xb8\xff\xe5\xff\xc6\xff\xc3\xff\xd1\xff\xcf\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x02\x00\x05\x00\x06\x00\x04\x00\x1d\x00\x1e\x00\x1f\x00\x16\x00\x0c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0e\x00\x05\x00\x06\x00\x12\x00\x02\x00\x14\x00\x15\x00\x18\x00\x0c\x00\x04\x00\x10\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x1b\x00\x0e\x00\x12\x00\x19\x00\x1a\x00\x15\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x01\x00\x02\x00\x03\x00\x16\x00\x05\x00\x06\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0c\x00\x05\x00\x06\x00\x09\x00\x04\x00\x05\x00\x15\x00\x09\x00\x0c\x00\x0b\x00\x13\x00\x14\x00\x12\x00\x19\x00\x1a\x00\x0f\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x01\x00\x0a\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x01\x00\x02\x00\x03\x00\x16\x00\x05\x00\x06\x00\x06\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0c\x00\x05\x00\x06\x00\x02\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x0c\x00\x1e\x00\x1f\x00\x04\x00\x05\x00\x13\x00\x14\x00\x02\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x0f\x00\x05\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x05\x00\x06\x00\x0f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0c\x00\x05\x00\x06\x00\x04\x00\x05\x00\x06\x00\x09\x00\x11\x00\x0c\x00\x13\x00\x1d\x00\x0c\x00\x16\x00\x17\x00\x0f\x00\x0e\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x17\x00\x18\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x01\x00\x02\x00\x03\x00\x05\x00\x05\x00\x06\x00\x0b\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0c\x00\x05\x00\x06\x00\x1d\x00\x05\x00\x06\x00\x05\x00\x06\x00\x0c\x00\x07\x00\x08\x00\x0c\x00\x0b\x00\x01\x00\x0d\x00\x02\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x17\x00\x18\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x01\x00\x02\x00\x03\x00\x05\x00\x05\x00\x06\x00\x02\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0c\x00\x05\x00\x06\x00\x05\x00\x06\x00\x1d\x00\x1e\x00\x01\x00\x0c\x00\x0b\x00\x09\x00\x0d\x00\x1e\x00\x1f\x00\x01\x00\x02\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x01\x00\x01\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x00\x00\x01\x00\x02\x00\x03\x00\x02\x00\x05\x00\x06\x00\x02\x00\x11\x00\x1e\x00\x1f\x00\x0a\x00\x0c\x00\x04\x00\x05\x00\x01\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1f\x00\x1e\x00\x1f\x00\x01\x00\x0f\x00\x20\x00\x11\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x01\x00\x02\x00\x03\x00\x04\x00\x19\x00\x06\x00\x07\x00\x08\x00\xff\xff\xff\xff\xff\xff\x0c\x00\xff\xff\xff\xff\x01\x00\x10\x00\x03\x00\x04\x00\xff\xff\x06\x00\x07\x00\x08\x00\xff\xff\x18\x00\xff\xff\x0c\x00\x0d\x00\xff\xff\x01\x00\x10\x00\x03\x00\x04\x00\xff\xff\x06\x00\x07\x00\x08\x00\xff\xff\x18\x00\xff\xff\x0c\x00\x05\x00\x06\x00\xff\xff\x10\x00\x04\x00\x05\x00\xff\xff\x0c\x00\xff\xff\x04\x00\x05\x00\x18\x00\xff\xff\xff\xff\xff\xff\x0f\x00\xff\xff\x11\x00\x17\x00\x18\x00\x0f\x00\xff\xff\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x09\x00\x18\x00\x19\x00\x34\x00\x33\x00\x11\x00\x12\x00\x6f\x00\x41\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x51\x00\x18\x00\x19\x00\x0a\x00\x09\x00\x0b\x00\x0c\x00\x42\x00\x56\x00\x34\x00\x4f\x00\x43\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x49\x00\x3b\x00\x35\x00\x0a\x00\x6c\x00\x75\x00\x0c\x00\x6e\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x36\x00\x18\x00\x19\x00\x21\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x56\x00\x18\x00\x19\x00\x05\x00\x2e\x00\x2f\x00\x27\x00\xee\xff\x56\x00\x51\x00\x2c\x00\x16\x00\x06\x00\x6c\x00\x6d\x00\x54\x00\x6e\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x4b\x00\x1e\x00\x63\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x12\x00\x18\x00\x19\x00\x14\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x56\x00\x18\x00\x19\x00\x73\x00\x03\x00\x4c\x00\x4d\x00\x4e\x00\x56\x00\x11\x00\x12\x00\x2e\x00\x2f\x00\x15\x00\x16\x00\x74\x00\x64\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x55\x00\x75\x00\x65\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x14\x00\x18\x00\x19\x00\x72\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x56\x00\x18\x00\x19\x00\x2e\x00\x38\x00\x19\x00\x27\x00\x29\x00\x56\x00\x2a\x00\x33\x00\x1a\x00\x2b\x00\x2c\x00\x39\x00\x4f\x00\x66\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3a\x00\x1c\x00\x67\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x53\x00\x18\x00\x19\x00\x51\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x56\x00\x18\x00\x19\x00\x33\x00\x18\x00\x19\x00\x0c\x00\x0d\x00\x56\x00\x03\x00\x04\x00\x1a\x00\x0e\x00\x14\x00\x20\x00\x38\x00\x68\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3c\x00\x1c\x00\x69\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x25\x00\x18\x00\x19\x00\x26\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x56\x00\x18\x00\x19\x00\x0c\x00\x0d\x00\x33\x00\x11\x00\x18\x00\x56\x00\x0e\x00\x27\x00\x0f\x00\x11\x00\x12\x00\x23\x00\x24\x00\x6a\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x4b\x00\x18\x00\x6b\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x3d\x00\x3e\x00\x3f\x00\x40\x00\x2e\x00\x18\x00\x19\x00\x1e\x00\x59\x00\x11\x00\x12\x00\x20\x00\x56\x00\x2e\x00\x2f\x00\x14\x00\x03\x00\x4c\x00\x4d\x00\x4e\x00\x12\x00\x11\x00\x12\x00\x08\x00\x30\x00\xff\xff\x53\x00\x00\x00\x57\x00\x44\x00\x45\x00\x46\x00\x47\x00\x48\x00\x5a\x00\x71\x00\x5b\x00\x5c\x00\x03\x00\x5d\x00\x5e\x00\x5f\x00\x00\x00\x00\x00\x00\x00\x60\x00\x00\x00\x00\x00\x5a\x00\x62\x00\x5b\x00\x5c\x00\x00\x00\x5d\x00\x5e\x00\x5f\x00\x00\x00\x63\x00\x00\x00\x60\x00\x61\x00\x00\x00\x5a\x00\x62\x00\x5b\x00\x5c\x00\x00\x00\x5d\x00\x5e\x00\x5f\x00\x00\x00\x63\x00\x00\x00\x60\x00\x18\x00\x19\x00\x00\x00\x62\x00\x2e\x00\x2f\x00\x00\x00\x1a\x00\x00\x00\x2e\x00\x2f\x00\x63\x00\x00\x00\x00\x00\x00\x00\x30\x00\x00\x00\x31\x00\x1b\x00\x1c\x00\x30\x00\x00\x00\x33\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 74) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74)
	]

happy_n_terms = 33 :: Int
happy_n_nonterms = 35 :: Int

happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn4
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_2 = happySpecReduce_1  1# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn5
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_3 = happySpecReduce_1  2# happyReduction_3
happyReduction_3 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn6
		 (happy_var_1
	)}

happyReduce_4 = happySpecReduce_1  3# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn7
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_5 = happySpecReduce_1  4# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_GenericParameter happy_var_1)) -> 
	happyIn8
		 (GenericParameter (happy_var_1)
	)}

happyReduce_6 = happySpecReduce_1  5# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_UpperIdent happy_var_1)) -> 
	happyIn9
		 (UpperIdent (happy_var_1)
	)}

happyReduce_7 = happySpecReduce_1  6# happyReduction_7
happyReduction_7 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_LowerIdent happy_var_1)) -> 
	happyIn10
		 (LowerIdent (happy_var_1)
	)}

happyReduce_8 = happySpecReduce_1  7# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (AbsGrammar.TopLevel (reverse happy_var_1)
	)}

happyReduce_9 = happySpecReduce_0  8# happyReduction_9
happyReduction_9  =  happyIn12
		 ([]
	)

happyReduce_10 = happySpecReduce_2  8# happyReduction_10
happyReduction_10 happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_11 = happySpecReduce_1  9# happyReduction_11
happyReduction_11 happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (AbsGrammar.BlockAtTop happy_var_1
	)}

happyReduce_12 = happyReduce 4# 9# happyReduction_12
happyReduction_12 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (AbsGrammar.Main happy_var_3
	) `HappyStk` happyRest}

happyReduce_13 = happySpecReduce_0  10# happyReduction_13
happyReduction_13  =  happyIn14
		 ([]
	)

happyReduce_14 = happySpecReduce_2  10# happyReduction_14
happyReduction_14 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn14
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_15 = happySpecReduce_1  11# happyReduction_15
happyReduction_15 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn15
		 (AbsGrammar.NamespaceIdentUpperIdent happy_var_1
	)}

happyReduce_16 = happySpecReduce_1  11# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn15
		 (AbsGrammar.NamespaceIdentLowerIdent happy_var_1
	)}

happyReduce_17 = happySpecReduce_1  12# happyReduction_17
happyReduction_17 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (AbsGrammar.ParamIdentUpperIdent happy_var_1
	)}

happyReduce_18 = happySpecReduce_1  12# happyReduction_18
happyReduction_18 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn16
		 (AbsGrammar.ParamIdentLowerIdent happy_var_1
	)}

happyReduce_19 = happySpecReduce_1  13# happyReduction_19
happyReduction_19 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn17
		 ((:[]) happy_var_1
	)}

happyReduce_20 = happySpecReduce_3  13# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_3 of { happy_var_3 -> 
	happyIn17
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_21 = happySpecReduce_1  14# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn18
		 ((:[]) happy_var_1
	)}

happyReduce_22 = happySpecReduce_2  14# happyReduction_22
happyReduction_22 happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_2 of { happy_var_2 -> 
	happyIn18
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_23 = happySpecReduce_1  15# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (AbsGrammar.GenericPlaceholder happy_var_1
	)}

happyReduce_24 = happySpecReduce_1  15# happyReduction_24
happyReduction_24 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn19
		 (AbsGrammar.BaseType happy_var_1
	)}

happyReduce_25 = happySpecReduce_2  15# happyReduction_25
happyReduction_25 happy_x_2
	happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	case happyOut20 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (AbsGrammar.GenericType happy_var_1 happy_var_2
	)}}

happyReduce_26 = happySpecReduce_3  16# happyReduction_26
happyReduction_26 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (AbsGrammar.Parameter happy_var_2
	)}

happyReduce_27 = happySpecReduce_1  17# happyReduction_27
happyReduction_27 happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	happyIn21
		 ((:[]) happy_var_1
	)}

happyReduce_28 = happySpecReduce_3  17# happyReduction_28
happyReduction_28 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut21 happy_x_3 of { happy_var_3 -> 
	happyIn21
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_29 = happySpecReduce_2  18# happyReduction_29
happyReduction_29 happy_x_2
	happy_x_1
	 =  happyIn22
		 (AbsGrammar.NoOp
	)

happyReduce_30 = happyReduce 5# 18# happyReduction_30
happyReduction_30 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut17 happy_x_3 of { happy_var_3 -> 
	case happyOut14 happy_x_4 of { happy_var_4 -> 
	happyIn22
		 (AbsGrammar.Namespace happy_var_3 (reverse happy_var_4)
	) `HappyStk` happyRest}}

happyReduce_31 = happyReduce 5# 18# happyReduction_31
happyReduction_31 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut10 happy_x_3 of { happy_var_3 -> 
	case happyOut23 happy_x_4 of { happy_var_4 -> 
	happyIn22
		 (AbsGrammar.Functor happy_var_3 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_32 = happySpecReduce_1  19# happyReduction_32
happyReduction_32 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 ((:[]) happy_var_1
	)}

happyReduce_33 = happySpecReduce_2  19# happyReduction_33
happyReduction_33 happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_2 of { happy_var_2 -> 
	happyIn23
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_34 = happySpecReduce_3  20# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_2 of { happy_var_2 -> 
	happyIn24
		 (AbsGrammar.FunctorComponent happy_var_2
	)}

happyReduce_35 = happySpecReduce_2  21# happyReduction_35
happyReduction_35 happy_x_2
	happy_x_1
	 =  case happyOut18 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (AbsGrammar.Generic happy_var_2
	)}

happyReduce_36 = happySpecReduce_2  21# happyReduction_36
happyReduction_36 happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (AbsGrammar.Satisfies happy_var_2
	)}

happyReduce_37 = happySpecReduce_2  21# happyReduction_37
happyReduction_37 happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (AbsGrammar.Requires happy_var_2
	)}

happyReduce_38 = happySpecReduce_2  21# happyReduction_38
happyReduction_38 happy_x_2
	happy_x_1
	 =  case happyOut26 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (AbsGrammar.Fn happy_var_2
	)}

happyReduce_39 = happyReduce 4# 22# happyReduction_39
happyReduction_39 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut27 happy_x_2 of { happy_var_2 -> 
	case happyOut31 happy_x_4 of { happy_var_4 -> 
	happyIn26
		 (AbsGrammar.FnParams happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest}}

happyReduce_40 = happySpecReduce_0  23# happyReduction_40
happyReduction_40  =  happyIn27
		 ([]
	)

happyReduce_41 = happySpecReduce_1  23# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 ((:[]) happy_var_1
	)}

happyReduce_42 = happySpecReduce_3  23# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_43 = happySpecReduce_3  24# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 (AbsGrammar.ValueParam happy_var_1 happy_var_3
	)}}

happyReduce_44 = happyReduce 5# 24# happyReduction_44
happyReduction_44 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut16 happy_x_1 of { happy_var_1 -> 
	case happyOut27 happy_x_3 of { happy_var_3 -> 
	case happyOut19 happy_x_5 of { happy_var_5 -> 
	happyIn28
		 (AbsGrammar.GenericParam happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_45 = happySpecReduce_1  25# happyReduction_45
happyReduction_45 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 (AbsGrammar.FnCallExpr happy_var_1
	)}

happyReduce_46 = happySpecReduce_0  26# happyReduction_46
happyReduction_46  =  happyIn30
		 ([]
	)

happyReduce_47 = happySpecReduce_1  26# happyReduction_47
happyReduction_47 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 ((:[]) happy_var_1
	)}

happyReduce_48 = happySpecReduce_3  26# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	happyIn30
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_49 = happySpecReduce_0  27# happyReduction_49
happyReduction_49  =  happyIn31
		 ([]
	)

happyReduce_50 = happySpecReduce_2  27# happyReduction_50
happyReduction_50 happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn31
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_51 = happySpecReduce_1  28# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (happy_var_1
	)}

happyReduce_52 = happySpecReduce_1  28# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (AbsGrammar.ValueOrRef happy_var_1
	)}

happyReduce_53 = happySpecReduce_1  28# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (AbsGrammar.IntLiteral happy_var_1
	)}

happyReduce_54 = happySpecReduce_1  28# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (AbsGrammar.RealLiteral happy_var_1
	)}

happyReduce_55 = happySpecReduce_1  28# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (AbsGrammar.StringLiteral happy_var_1
	)}

happyReduce_56 = happySpecReduce_1  28# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (AbsGrammar.CharLiteral happy_var_1
	)}

happyReduce_57 = happyReduce 4# 28# happyReduction_57
happyReduction_57 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.FnLiteral happy_var_3
	) `HappyStk` happyRest}

happyReduce_58 = happySpecReduce_3  28# happyReduction_58
happyReduction_58 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.DotOperator happy_var_1 happy_var_3
	)}}

happyReduce_59 = happySpecReduce_3  28# happyReduction_59
happyReduction_59 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.PipeOperator happy_var_1 happy_var_3
	)}}

happyReduce_60 = happyReduce 4# 28# happyReduction_60
happyReduction_60 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.CallOperator happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_61 = happySpecReduce_3  28# happyReduction_61
happyReduction_61 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.LeftShiftOperator happy_var_1 happy_var_3
	)}}

happyReduce_62 = happySpecReduce_3  28# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.RightShiftOperator happy_var_1 happy_var_3
	)}}

happyReduce_63 = happySpecReduce_3  28# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.MultOperator happy_var_1 happy_var_3
	)}}

happyReduce_64 = happySpecReduce_3  28# happyReduction_64
happyReduction_64 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.DivisionOperator happy_var_1 happy_var_3
	)}}

happyReduce_65 = happySpecReduce_3  28# happyReduction_65
happyReduction_65 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.PlusOperator happy_var_1 happy_var_3
	)}}

happyReduce_66 = happySpecReduce_3  28# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsGrammar.MinusOperator happy_var_1 happy_var_3
	)}}

happyReduce_67 = happySpecReduce_1  29# happyReduction_67
happyReduction_67 happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 (happy_var_1
	)}

happyReduce_68 = happySpecReduce_1  30# happyReduction_68
happyReduction_68 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (happy_var_1
	)}

happyReduce_69 = happySpecReduce_1  31# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn35
		 (happy_var_1
	)}

happyReduce_70 = happySpecReduce_1  32# happyReduction_70
happyReduction_70 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn36
		 (happy_var_1
	)}

happyReduce_71 = happySpecReduce_3  33# happyReduction_71
happyReduction_71 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_2 of { happy_var_2 -> 
	happyIn37
		 (happy_var_2
	)}

happyReduce_72 = happySpecReduce_1  34# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn38
		 (AbsGrammar.Declaration happy_var_1
	)}

happyReduce_73 = happySpecReduce_1  34# happyReduction_73
happyReduction_73 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn38
		 (AbsGrammar.Expr happy_var_1
	)}

happyReduce_74 = happySpecReduce_3  34# happyReduction_74
happyReduction_74 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut32 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (AbsGrammar.Assignment happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 32# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TI happy_dollar_dollar) -> cont 25#;
	PT _ (TD happy_dollar_dollar) -> cont 26#;
	PT _ (TL happy_dollar_dollar) -> cont 27#;
	PT _ (TC happy_dollar_dollar) -> cont 28#;
	PT _ (T_GenericParameter happy_dollar_dollar) -> cont 29#;
	PT _ (T_UpperIdent happy_dollar_dollar) -> cont 30#;
	PT _ (T_LowerIdent happy_dollar_dollar) -> cont 31#;
	_ -> happyError' (tk:tks)
	}

happyError_ 32# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pGlobal tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut11 x))

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}


















-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 







-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif



data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList


















infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}
          

          case action of
                0#           -> {- nothing -}
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}
                                                   
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}
                                     

                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st


indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i



          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

