import MetaphysicsDeterminismTheoremCanonicalLaneLean.CausalClosure

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

def ConstrainedDeterminismClosure (A : DeterminismAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_determinism_endgame (A : DeterminismAdmissibleClass) :
    ConstrainedDeterminismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse
