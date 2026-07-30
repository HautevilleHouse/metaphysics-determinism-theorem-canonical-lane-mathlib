import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure LaplaceDeterminismPackage (D : CausalDeterminismPackage) where
  initialConditionsFullyKnown : Prop
  lawsCoverAllCases : Prop
  uniqueEvolution : Prop
  laplaceConclusion : Prop

structure LaplaceDeterminismEvidence {D : CausalDeterminismPackage}
    (L : LaplaceDeterminismPackage D) where
  initialConditionsFullyKnownClosed : L.initialConditionsFullyKnown
  lawsCoverAllCasesClosed : L.lawsCoverAllCases
  uniqueEvolutionClosed : L.uniqueEvolution
  laplaceConclusionClosed : L.laplaceConclusion

def LaplaceDeterminismClosed {D : CausalDeterminismPackage}
    (L : LaplaceDeterminismPackage D) : Prop :=
  L.initialConditionsFullyKnown ∧ L.lawsCoverAllCases ∧ L.uniqueEvolution ∧ L.laplaceConclusion

theorem laplace_determinism_closed_from_evidence
    {D : CausalDeterminismPackage} (L : LaplaceDeterminismPackage D)
    (E : LaplaceDeterminismEvidence L) : LaplaceDeterminismClosed L := by
  exact And.intro E.initialConditionsFullyKnownClosed
    (And.intro E.lawsCoverAllCasesClosed
      (And.intro E.uniqueEvolutionClosed E.laplaceConclusionClosed))

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse