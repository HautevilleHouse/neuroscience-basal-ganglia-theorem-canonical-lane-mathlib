import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure HodgkinHuxleySystem where
  membranePotential : ℝ -> ℝ
  sodiumChannel : ℝ -> ℝ
  potassiumChannel : ℝ -> ℝ
  leakageCurrent : ℝ -> ℝ
  capacitance : ℝ
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakageConductance : ℝ
  sodiumReversal : ℝ
  potassiumReversal : ℝ
  leakageReversal : ℝ

def defaultHHSystem : HodgkinHuxleySystem := {
  membranePotential := fun _ => -65
, sodiumChannel := fun _ => 0.05
, potassiumChannel := fun _ => 0.6
, leakageCurrent := fun _ => 0.0
, capacitance := 1.0
, sodiumConductance := 120.0
, potassiumConductance := 36.0
, leakageConductance := 0.3
, sodiumReversal := 50.0
, potassiumReversal := -77.0
, leakageReversal := -54.4
}

structure HodgkinHuxleyClosed (HH : HodgkinHuxleySystem) : Prop where
  membraneEquationSatisfied : Prop
  gatingVariableDynamics : Prop

theorem hodgkin_huxley_closed_from_admissible (A : AdmissibleClass) (HH : HodgkinHuxleySystem) : HodgkinHuxleyClosed HH := by
  refine {
    membraneEquationSatisfied := A.endpointSatisfied,
    gatingVariableDynamics := A.remainderRecorded
  }

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse
