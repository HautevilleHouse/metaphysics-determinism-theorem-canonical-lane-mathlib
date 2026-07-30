import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure CausalDeterminismPackage where
  stateSpace : Type u
  timeDomain : Type v
  transitionFunction : stateSpace -> timeDomain -> stateSpace
  uniquenessCondition : Prop
  determinismLaw : Prop

def CausalDeterminismClosed (C : CausalDeterminismPackage) : Prop :=
  C.uniquenessCondition ∧ C.determinismLaw

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse