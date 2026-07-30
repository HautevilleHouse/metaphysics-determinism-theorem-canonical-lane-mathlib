import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure LaplaceDemonPackage {C : CausalStructurePackage}
    (D : DeterminismPrinciplePackage C) where
  demonKnowledge : Type u
  completeKnowledge : Prop
  predictivePower : ∀ s : stateSpace, ∀ (f : C.eventSpace → Prop),
    completeKnowledge → (∀ (X : Type) [inst : Fintype X] (events : X → C.eventSpace),
      ThereExistsUniqueFuture s events)

structure LaplaceDemonEvidence {C : CausalStructurePackage}
    {D : DeterminismPrinciplePackage C} (L : LaplaceDemonPackage D) where
  completeKnowledgeClosed : L.completeKnowledge

def LaplaceDemonClosed {C : CausalStructurePackage}
    {D : DeterminismPrinciplePackage C} (L : LaplaceDemonPackage D) : Prop :=
  L.completeKnowledge

theorem laplace_demon_closed_from_evidence
    {C : CausalStructurePackage} {D : DeterminismPrinciplePackage C}
    (L : LaplaceDemonPackage D) (E : LaplaceDemonEvidence L) :
    LaplaceDemonClosed L := by
  exact E.completeKnowledgeClosed

end HautevilleHouse
end MetaphysicsDeterminismTheoremCanonicalLaneLean
