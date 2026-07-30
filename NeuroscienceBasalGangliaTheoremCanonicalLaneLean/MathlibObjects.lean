import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BasalGangliaNeuralNetwork where
  carrier : Type
  topology : TopologicalSpace carrier

structure BasalGangliaAdmittedObject where
  network : BasalGangliaNeuralNetwork
  directPathwayInhibited : Prop
  indirectPathwayDisinhibited : Prop
  thalamicGateOpened : Prop
  conclusion : thalamicGateOpened

structure BasalGangliaEndgameState where
  object : BasalGangliaAdmittedObject

def BasalGangliaWitnessClosed (O : BasalGangliaAdmittedObject) : Prop :=
  O.thalamicGateOpened

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse