import MetaphysicsDeterminismTheoremCanonicalLaneLean.CausalDeterminismPackage

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure EndpointDeterminismPackage where
  uniqueFutureState : Prop
  endpointDeterminedByInitial : Prop
  noFreedomOfChoice : Prop
  determinismUnavoidable : Prop

structure EndpointDeterminismEvidence (E : EndpointDeterminismPackage) where
  uniqueFutureStateClosed : E.uniqueFutureState
  endpointDeterminedByInitialClosed : E.endpointDeterminedByInitial
  noFreedomOfChoiceClosed : E.noFreedomOfChoice
  determinismUnavoidableClosed : E.determinismUnavoidable

def EndpointDeterminismClosed (E : EndpointDeterminismPackage) : Prop :=
  E.uniqueFutureState ∧ E.endpointDeterminedByInitial ∧ E.noFreedomOfChoice ∧ E.determinismUnavoidable

theorem endpoint_determinism_closed_from_evidence (E : EndpointDeterminismPackage) (Ev : EndpointDeterminismEvidence E) : EndpointDeterminismClosed E := by
  exact And.intro Ev.uniqueFutureStateClosed (And.intro Ev.endpointDeterminedByInitialClosed (And.intro Ev.noFreedomOfChoiceClosed Ev.determinismUnavoidableClosed))

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse