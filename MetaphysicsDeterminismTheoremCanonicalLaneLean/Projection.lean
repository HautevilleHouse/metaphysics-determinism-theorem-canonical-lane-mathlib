import MetaphysicsDeterminismTheoremCanonicalLaneLean.DeterminismAdmittedObject

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def determinismProjection : Projection DeterminismEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem determinism_projection_idempotent (x : DeterminismEndgameState) :
    determinismProjection.toFun (determinismProjection.toFun x) = determinismProjection.toFun x := by
  exact determinismProjection.idempotent x

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse