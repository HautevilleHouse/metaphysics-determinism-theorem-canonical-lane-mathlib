import MetaphysicsDeterminismTheoremCanonicalLaneLean.DeterminismAdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

def bridgeClosed (A : DeterminismAdmissibleClass) : Prop :=
  A.object.deterministicOutcome

theorem bridge_from_admissible_class (A : DeterminismAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse
