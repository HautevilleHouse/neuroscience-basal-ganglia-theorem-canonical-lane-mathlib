import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceBasalGangliaTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

def ConstrainedBasalGangliaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_basal_ganglia_endgame (A : AdmissibleClass) :
    ConstrainedBasalGangliaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse
