import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure QuantumIndeterminacyPackage where
  probabilitySpace : Type u
  collapsePostulate : Prop
  measurementOutcomes : Prop
  indeterminacyEvidence : Prop

def QuantumIndeterminacyClosed (Q : QuantumIndeterminacyPackage) : Prop :=
  Q.collapsePostulate ∧ Q.measurementOutcomes ∧ Q.indeterminacyEvidence

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse