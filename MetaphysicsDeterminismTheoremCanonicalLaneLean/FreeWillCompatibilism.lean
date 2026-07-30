import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure FreeWillCompatibilismPackage where
  agentActions : Type u
  causalChain : Prop
  alternativePossibilities : Prop
  compatibilityProof : Prop

def FreeWillCompatibilismClosed (F : FreeWillCompatibilismPackage) : Prop :=
  F.causalChain ∧ F.alternativePossibilities ∧ F.compatibilityProof

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse