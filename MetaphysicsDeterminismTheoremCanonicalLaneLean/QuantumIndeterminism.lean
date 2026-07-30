import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure QuantumIndeterminismPackage where
  hilbertSpace : Type u
  stateVector : hilbertSpace
  measurementProcess : Prop
  outcomeProbabilistic : Prop
  indeterminismConclusion : Prop

structure QuantumIndeterminismEvidence (Q : QuantumIndeterminismPackage) where
  hilbertSpaceClosed : Nonempty Q.hilbertSpace
  stateVectorClosed : True
  measurementProcessClosed : Q.measurementProcess
  outcomeProbabilisticClosed : Q.outcomeProbabilistic
  indeterminismConclusionClosed : Q.indeterminismConclusion

def QuantumIndeterminismClosed (Q : QuantumIndeterminismPackage) : Prop :=
  Q.measurementProcess ∧ Q.outcomeProbabilistic ∧ Q.indeterminismConclusion

theorem quantum_indeterminism_closed_from_evidence (Q : QuantumIndeterminismPackage)
    (E : QuantumIndeterminismEvidence Q) : QuantumIndeterminismClosed Q := by
  exact And.intro E.measurementProcessClosed
    (And.intro E.outcomeProbabilisticClosed E.indeterminismConclusionClosed)

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse