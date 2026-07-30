import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsDeterminismTheoremCanonicalLaneLean

structure MetaphysicsDeterminismAdmittedObject where
  carrier : Type
  freeWillCompatible : Prop
  causalClosure : Prop
  deterministicResolution : Prop
  conclusion : deterministicResolution

def DeterminismWitnessClosed (O : MetaphysicsDeterminismAdmittedObject) : Prop :=
  O.deterministicResolution

end MetaphysicsDeterminismTheoremCanonicalLaneLean
end HautevilleHouse