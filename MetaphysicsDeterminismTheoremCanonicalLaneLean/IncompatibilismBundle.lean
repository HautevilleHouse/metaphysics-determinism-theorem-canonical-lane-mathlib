import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure IncompatibilismBundlePackage {C : CausalStructurePackage}
    {D : DeterminismPrinciplePackage C}
    (L : LaplaceDemonPackage D) (F : FreeWillConstraintPackage D) where
  incompatibilityProof : Prop
  proofClosed : incompatibilityProof
  lemmaBridge : bridgeClosed → gateClosed

structure IncompatibilismBundleEvidence {C : CausalStructurePackage}
    {D : DeterminismPrinciplePackage C}
    {L : LaplaceDemonPackage D} {F : FreeWillConstraintPackage D}
    (I : IncompatibilismBundlePackage L F) where
  proofClosed : I.incompatibilityProof
  lemmaBridgeClosed : bridgeClosed → gateClosed

def IncompatibilismBundleClosed {C : CausalStructurePackage}
    {D : DeterminismPrinciplePackage C}
    {L : LaplaceDemonPackage D} {F : FreeWillConstraintPackage D}
    (I : IncompatibilismBundlePackage L F) : Prop :=
  I.incompatibilityProof ∧ (bridgeClosed → gateClosed)

theorem incompatibilism_bundle_closed_from_evidence
    {C : CausalStructurePackage} {D : DeterminismPrinciplePackage C}
    {L : LaplaceDemonPackage D} {F : FreeWillConstraintPackage D}
    (I : IncompatibilismBundlePackage L F)
    (E : IncompatibilismBundleEvidence I) : IncompatibilismBundleClosed I := by
  exact And.intro E.proofClosed E.lemmaBridgeClosed

end HautevilleHouse
end MetaphysicsDeterminismTheoremCanonicalLaneLean
