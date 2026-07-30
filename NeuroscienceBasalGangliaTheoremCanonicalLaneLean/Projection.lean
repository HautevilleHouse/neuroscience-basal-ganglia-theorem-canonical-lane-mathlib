import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def basalGangliaProjection : Projection BasalGangliaEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem basal_ganglia_projection_idempotent (x : BasalGangliaEndgameState) :
    basalGangliaProjection.toFun (basalGangliaProjection.toFun x) = basalGangliaProjection.toFun x := by
  exact basalGangliaProjection.idempotent x

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse