module DatatypesTermInstances where
import Datatypes
import TermRep
{- Generated by DrIFT (Automatic class derivations for Haskell) -}
{-# LINE 1 "Datatypes.hs" #-}
{-* Generated by DrIFT : Look, but Don't Touch. *-}
instance Term SortA where
    explode (x::SortA) = TermRep (toDyn x, f x, g x) where
        f (SortA1 aa) = [explode aa]
        f SortA2 = []
        g (SortA1 _) xs = case TermRep.fArgs xs of [aa] -> toDyn ((SortA1 (TermRep.fDyn aa))::SortA) ; _ -> error "Term explosion error."
        g SortA2 xs = case TermRep.fArgs xs of [] -> toDyn ((SortA2)::SortA) ; _ -> error "Term explosion error."

_tc_SortATc = mkTyCon "SortA"
instance Typeable SortA where
    typeOf x = mkTyConApp _tc_SortATc [ ]

instance Term SortB where
    explode (x::SortB) = TermRep (toDyn x, f x, g x) where
        f (SortB aa ab) = [explode aa,explode ab]
        g (SortB _ _) xs = case TermRep.fArgs xs of [aa,ab] -> toDyn ((SortB (TermRep.fDyn aa) (TermRep.fDyn ab))::SortB) ; _ -> error "Term explosion error."

_tc_SortBTc = mkTyCon "SortB"
instance Typeable SortB where
    typeOf x = mkTyConApp _tc_SortBTc [ ]

--  Imported from other files :-
