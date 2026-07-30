import MetaphysicsDeterminismTheoremCanonicalLaneLean.DeterminismAdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

def gateClosed (A : DeterminismAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DeterminismAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse
