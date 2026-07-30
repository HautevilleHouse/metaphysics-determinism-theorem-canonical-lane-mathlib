import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure CausalStructurePackage where
  eventSpace : Type u
  causalRelation : eventSpace → eventSpace → Prop
  reflexiveCausal : ∀ e : eventSpace, causalRelation e e
  transitiveCausal : ∀ a b c : eventSpace, causalRelation a b → causalRelation b c → causalRelation a c
  antisymmetricCausal : ∀ a b : eventSpace, causalRelation a b → causalRelation b a → a = b

structure CausalStructureEvidence (C : CausalStructurePackage) where
  reflexiveCausalClosed : C.reflexiveCausal
  transitiveCausalClosed : C.transitiveCausal
  antisymmetricCausalClosed : C.antisymmetricCausal

def CausalStructureClosed (C : CausalStructurePackage) : Prop :=
  C.reflexiveCausal ∧ C.transitiveCausal ∧ C.antisymmetricCausal

theorem causal_structure_closed_from_evidence (C : CausalStructurePackage)
    (E : CausalStructureEvidence C) : CausalStructureClosed C := by
  exact And.intro E.reflexiveCausalClosed (And.intro E.transitiveCausalClosed E.antisymmetricCausalClosed)

end HautevilleHouse
end MetaphysicsDeterminismTheoremCanonicalLaneLean
