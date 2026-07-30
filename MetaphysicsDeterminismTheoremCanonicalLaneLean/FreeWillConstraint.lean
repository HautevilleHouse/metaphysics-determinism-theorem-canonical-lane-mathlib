import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure FreeWillConstraintPackage {C : CausalStructurePackage}
    (D : DeterminismPrinciplePackage C) where
  agentChoices : Type u
  alternativePossibilities : Prop
  constraintCondition : alternativePossibilities → ¬ DeterminismPrincipleClosed D

structure FreeWillConstraintEvidence {C : CausalStructurePackage}
    {D : DeterminismPrinciplePackage C} (F : FreeWillConstraintPackage D) where
  constraintConditionClosed : F.constraintCondition

def FreeWillConstraintClosed {C : CausalStructurePackage}
    {D : DeterminismPrinciplePackage C} (F : FreeWillConstraintPackage D) : Prop :=
  ∃ (ap : Prop), F.constraintCondition ap

theorem free_will_constraint_closed_from_evidence
    {C : CausalStructurePackage} {D : DeterminismPrinciplePackage C}
    (F : FreeWillConstraintPackage D) (E : FreeWillConstraintEvidence F) :
    FreeWillConstraintClosed F := by
  refine ⟨?_, E.constraintConditionClosed⟩
  exact F.alternativePossibilities

end HautevilleHouse
end MetaphysicsDeterminismTheoremCanonicalLaneLean
