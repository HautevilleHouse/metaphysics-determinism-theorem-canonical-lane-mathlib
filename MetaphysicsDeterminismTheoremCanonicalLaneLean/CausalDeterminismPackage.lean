import MetaphysicsDeterminismTheoremCanonicalLaneLean.DeterminismAdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure CausalDeterminismPackage where
  causalLaw : Prop
  initialStateUniqueness : Prop
  timeEvolutionFunction : Prop
  determinismHolds : Prop

structure CausalDeterminismEvidence (C : CausalDeterminismPackage) where
  causalLawClosed : C.causalLaw
  initialStateUniquenessClosed : C.initialStateUniqueness
  timeEvolutionFunctionClosed : C.timeEvolutionFunction
  determinismHoldsClosed : C.determinismHolds

def CausalDeterminismClosed (C : CausalDeterminismPackage) : Prop :=
  C.causalLaw ∧ C.initialStateUniqueness ∧ C.timeEvolutionFunction ∧ C.determinismHolds

theorem causal_determinism_closed_from_evidence (C : CausalDeterminismPackage) (E : CausalDeterminismEvidence C) : CausalDeterminismClosed C := by
  exact And.intro E.causalLawClosed (And.intro E.initialStateUniquenessClosed (And.intro E.timeEvolutionFunctionClosed E.determinismHoldsClosed))

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse