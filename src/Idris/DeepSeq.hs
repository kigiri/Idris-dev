module Idris.DeepSeq(module Idris.DeepSeq, module Idris.Core.DeepSeq) where

import Idris.Core.DeepSeq
import Idris.Core.TT
import Idris.AbsSyntaxTree

import Control.DeepSeq

-- All generated by 'derive'

instance NFData Forceability where
        rnf Conditional = ()
        rnf Unconditional = ()

instance NFData IntTy where
        rnf (ITFixed x1) = rnf x1 `seq` ()
        rnf ITNative = ()
        rnf ITBig = ()
        rnf ITChar = ()
        rnf (ITVec x1 x2) = rnf x1 `seq` rnf x2 `seq` ()

instance NFData NativeTy where
        rnf IT8 = ()
        rnf IT16 = ()
        rnf IT32 = ()
        rnf IT64 = ()
 
instance NFData ArithTy where
        rnf (ATInt x1) = rnf x1 `seq` ()
        rnf ATFloat = ()

instance NFData SizeChange where
        rnf Smaller = ()
        rnf Same = ()
        rnf Bigger = ()
        rnf Unknown = ()

instance NFData CGInfo where
        rnf (CGInfo x1 x2 x3 x4 x5)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` ()

instance NFData Fixity where
        rnf (Infixl x1) = rnf x1 `seq` ()
        rnf (Infixr x1) = rnf x1 `seq` ()
        rnf (InfixN x1) = rnf x1 `seq` ()
        rnf (PrefixN x1) = rnf x1 `seq` ()

instance NFData FixDecl where
        rnf (Fix x1 x2) = rnf x1 `seq` rnf x2 `seq` ()

instance NFData Static where
        rnf Static = ()
        rnf Dynamic = ()

instance NFData ArgOpt where
        rnf _ = ()

instance NFData Plicity where
        rnf (Imp x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (Exp x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (Constraint x1 x2 x3)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (TacImp x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()

instance NFData FnOpt where
        rnf Inlinable = ()
        rnf TotalFn = ()
        rnf PartialFn = ()
        rnf Coinductive = ()
        rnf AssertTotal = ()
        rnf Dictionary = ()
        rnf Implicit = ()
        rnf (CExport x1) = rnf x1 `seq` ()
        rnf Reflection = ()
        rnf (Specialise x1) = rnf x1 `seq` ()

instance NFData DataOpt where
        rnf Codata = ()
        rnf DefaultEliminator = ()

instance (NFData t) => NFData (PDecl' t) where
        rnf (PFix x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PTy x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()
        rnf (PPostulate x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()
        rnf (PClauses x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PCAF x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PData x1 x2 x3 x4 x5)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` ()
        rnf (PParams x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PNamespace x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PRecord x1 x2 x3 x4 x5 x6 x7 x8)
          = rnf x1 `seq`
              rnf x2 `seq`
                rnf x3 `seq`
                  rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` rnf x7 `seq` rnf x8 `seq` ()
        rnf (PClass x1 x2 x3 x4 x5 x6 x7)
          = rnf x1 `seq`
              rnf x2 `seq`
                rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` rnf x7 `seq` ()
        rnf (PInstance x1 x2 x3 x4 x5 x6 x7 x8)
          = rnf x1 `seq`
              rnf x2 `seq`
                rnf x3 `seq`
                  rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` rnf x7 `seq` rnf x8 `seq` ()
        rnf (PDSL x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PSyntax x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PMutual x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PDirective x1) = ()
        rnf (PProvider x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()
        rnf (PTransform x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()

instance NFData ProvideWhat where
        rnf ProvAny       = ()
        rnf ProvTerm      = ()
        rnf ProvPostulate = ()

instance NFData PunInfo where
        rnf x = x `seq` ()

instance (NFData t) => NFData (PClause' t) where
        rnf (PClause x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()
        rnf (PWith x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()
        rnf (PClauseR x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PWithR x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()

instance (NFData t) => NFData (PData' t) where
        rnf (PDatadecl x1 x2 x3)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PLaterdecl x1 x2) = rnf x1 `seq` rnf x2 `seq` ()

instance NFData PTerm where
        rnf (PQuote x1) = rnf x1 `seq` ()
        rnf (PRef x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PInferRef x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PPatvar x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PLam x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PPi x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PLet x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PTyped x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PApp x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PAppBind x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PMatchApp x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PCase x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PTrue x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PFalse x1) = rnf x1 `seq` ()
        rnf (PRefl x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PResolveTC x1) = rnf x1 `seq` ()
        rnf (PEq x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (PRewrite x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PPair x1 x2 x3 x4) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PDPair x1 x2 x3 x4 x5)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` ()
        rnf (PAlternative x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PHidden x1) = rnf x1 `seq` ()
        rnf PType = ()
        rnf (PGoal x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PConstant x1) = x1 `seq` ()
        rnf Placeholder = ()
        rnf (PDoBlock x1) = rnf x1 `seq` ()
        rnf (PIdiom x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (PReturn x1) = rnf x1 `seq` ()
        rnf (PMetavar x1) = rnf x1 `seq` ()
        rnf (PProof x1) = rnf x1 `seq` ()
        rnf (PTactics x1) = rnf x1 `seq` ()
        rnf (PElabError x1) = rnf x1 `seq` ()
        rnf PImpossible = ()
        rnf (PCoerced x1) = rnf x1 `seq` ()
        rnf (PUnifyLog x1) = rnf x1 `seq` ()
        rnf (PNoImplicits x1) = rnf x1 `seq` ()

instance (NFData t) => NFData (PTactic' t) where
        rnf (Intro x1) = rnf x1 `seq` ()
        rnf Intros = ()
        rnf (Focus x1) = rnf x1 `seq` ()
        rnf (Refine x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (Rewrite x1) = rnf x1 `seq` ()
        rnf (Induction x1) = rnf x1 `seq` ()
        rnf (Equiv x1) = rnf x1 `seq` ()
        rnf (MatchRefine x1) = rnf x1 `seq` ()
        rnf (LetTac x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (LetTacTy x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (Exact x1) = rnf x1 `seq` ()
        rnf Compute = ()
        rnf Trivial = ()
        rnf (ProofSearch x1 x2)
          = rnf x1 `seq` rnf x2 `seq` ()
        rnf Solve = ()
        rnf Attack = ()
        rnf ProofState = ()
        rnf ProofTerm = ()
        rnf Undo = ()
        rnf (Try x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (TSeq x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (ApplyTactic x1) = rnf x1 `seq` ()
        rnf (Reflect x1) = rnf x1 `seq` ()
        rnf (Fill x1) = rnf x1 `seq` ()
        rnf (GoalType x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf Qed = ()
        rnf Abandon = ()

instance (NFData t) => NFData (PDo' t) where
        rnf (DoExp x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (DoBind x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (DoBindP x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()
        rnf (DoLet x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (DoLetP x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()

instance (NFData t) => NFData (PArg' t) where
        rnf (PImp x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()
        rnf (PExp x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PConstraint x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()
        rnf (PTacImplicit x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()

instance NFData ClassInfo where
        rnf (CI x1 x2 x3 x4 x5 x6)
          = rnf x1 `seq`
              rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` ()

instance NFData OptInfo where
        rnf (Optimise x1 x2 x3 x4)
          = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()

instance NFData TypeInfo where
        rnf (TI x1 x2 x3 x4) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` rnf x4 `seq` ()

instance (NFData t) => NFData (DSL' t) where
        rnf (DSL x1 x2 x3 x4 x5 x6 x7 x8 x9)
          = rnf x1 `seq`
              rnf x2 `seq`
                rnf x3 `seq`
                  rnf x4 `seq`
                    rnf x5 `seq` rnf x6 `seq` rnf x7 `seq` rnf x8 `seq` rnf x9 `seq` ()

instance NFData SynContext where
        rnf PatternSyntax = ()
        rnf TermSyntax = ()
        rnf AnySyntax = ()

instance NFData Syntax where
        rnf (Rule x1 x2 x3) = rnf x1 `seq` rnf x2 `seq` rnf x3 `seq` ()

instance NFData SSymbol where
        rnf (Keyword x1) = rnf x1 `seq` ()
        rnf (Symbol x1) = rnf x1 `seq` ()
        rnf (Binding x1) = rnf x1 `seq` ()
        rnf (Expr x1) = rnf x1 `seq` ()
        rnf (SimpleExpr x1) = rnf x1 `seq` ()

instance NFData Using where
        rnf (UImplicit x1 x2) = rnf x1 `seq` rnf x2 `seq` ()
        rnf (UConstraint x1 x2) = rnf x1 `seq` rnf x2 `seq` ()

 
instance NFData SyntaxInfo where
        rnf (Syn x1 x2 x3 x4 x5 x6 x7 x8)
          = rnf x1 `seq`
              rnf x2 `seq`
                rnf x3 `seq`
                  rnf x4 `seq` rnf x5 `seq` rnf x6 `seq` rnf x7 `seq` rnf x8 `seq` ()



