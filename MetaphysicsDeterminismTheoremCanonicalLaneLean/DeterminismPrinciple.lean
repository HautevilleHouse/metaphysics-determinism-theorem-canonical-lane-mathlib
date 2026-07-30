import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure DeterminismPrinciplePackage (C : CausalStructurePackage) where
  stateSpace : Type u
  evolutionLaw : stateSpace → eventSpace → stateSpace
  determinismCondition : Prop
  uniquenessOfEvolution : ∀ s : stateSpace, ∀ e1 e2 : eventSpace,
    (∀ f : eventSpace, C.causalRelation f e1 ↔ C.causalRelation f e2) →
    evolutionLaw s e1 = evolutionLaw s e2

structure DeterminismPrincipleEvidence {C : CausalStructurePackage}
    (D : DeterminismPrinciplePackage C) where
  determinismConditionClosed : D.determinismCondition
  uniquenessOfEvolutionClosed : D.uniquenessOfEvolution

def DeterminismPrincipleClosed {C : CausalStructurePackage}
    (D : DeterminismPrinciplePackage C) : Prop :=
  D.determinismCondition ∧ D.uniquenessOfEvolution

theorem determinism_principle_closed_from_evidence
    {C : CausalStructurePackage} (D : DeterminismPrinciplePackage C)
    (E : DeterminismPrincipleEvidence D) : DeterminismPrincipleClosed D := by
  exact And.intro E.determinismConditionClosed E.uniquenessOfEvolutionClosed

end HautevilleHouse
end MetaphysicsDeterminismTheoremCanonicalLaneLean
