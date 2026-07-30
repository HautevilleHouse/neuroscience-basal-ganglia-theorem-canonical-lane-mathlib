import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceBasalGangliaTheoremCanonicalLaneLean.BasalGangliaConnectome

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | { object := O, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } =>
    BasalGangliaConnectomeClosed O

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.conclusion

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse