import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure DeterminismAdmittedObject where
  agent : Type
  choiceStructure : Prop
  causalChain : Prop
  deterministicOutcome : Prop
  conclusion : deterministicOutcome

structure DeterminismAdmissibleClass where
  object : DeterminismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DeterminismAdmissibleClass) : Prop :=
  A.object. deterministicOutcome ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse
