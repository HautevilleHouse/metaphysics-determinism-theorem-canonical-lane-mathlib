import MetaphysicsDeterminismTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure CausalChainPackage where
  agent : Type
  initialCause : Prop
  lawLikeConnection : Prop
  chainTransitive : Prop
  chainAcyclic : Prop

structure CausalChainEvidence (C : CausalChainPackage) where
  initialCauseClosed : C.initialCause
  lawLikeConnectionClosed : C.lawLikeConnection
  chainTransitiveClosed : C.chainTransitive
  chainAcyclicClosed : C.chainAcyclic

def CausalChainClosed (C : CausalChainPackage) : Prop :=
  C.initialCause ∧ C.lawLikeConnection ∧ C.chainTransitive ∧ C.chainAcyclic

theorem causal_chain_closed_from_evidence (C : CausalChainPackage) (E : CausalChainEvidence C) :
    CausalChainClosed C := by
  exact And.intro E.initialCauseClosed
    (And.intro E.lawLikeConnectionClosed
      (And.intro E.chainTransitiveClosed E.chainAcyclicClosed))

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse
