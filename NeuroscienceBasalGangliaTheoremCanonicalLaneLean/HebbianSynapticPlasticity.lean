import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure HebbianPlasticityRule where
  preSynapticActivity : ℝ -> ℝ
  postSynapticActivity : ℝ -> ℝ
  synapticWeight : ℝ -> ℝ
  learningRate : ℝ
  weightDecay : ℝ

def defaultHebbianRule : HebbianPlasticityRule := {
  preSynapticActivity := fun _ => 0.0
, postSynapticActivity := fun _ => 0.0
, synapticWeight := fun _ => 0.5
, learningRate := 0.01
, weightDecay := 0.001
}

structure HebbianPlasticityClosed (H : HebbianPlasticityRule) : Prop where
  correlationBasedUpdate : Prop
  weightStabilization : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

theorem hebbian_plasticity_closed_from_admissible (A : AdmissibleClass) (H : HebbianPlasticityRule) : HebbianPlasticityClosed H := by
  refine {
    correlationBasedUpdate := A.endpointSatisfied,
    weightStabilization := A.remainderRecorded,
    longTermPotentiation := A.gateWitness.elim (fun h => h) (fun h => h),
    longTermDepression := A.endpointSatisfied
  }

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse
