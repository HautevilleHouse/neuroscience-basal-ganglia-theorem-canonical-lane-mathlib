import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure HebbianLearningPlasticityPackage where
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  synapticWeight : ℝ
  learningRule : Prop
  stabilityCondition : Prop
  weightDynamics : Prop

structure HebbianLearningPlasticityEvidence (H : HebbianLearningPlasticityPackage) where
  learningRuleClosed : H.learningRule
  stabilityConditionClosed : H.stabilityCondition
  weightDynamicsClosed : H.weightDynamics

def HebbianLearningPlasticityClosed (H : HebbianLearningPlasticityPackage) : Prop :=
  H.learningRule ∧ H.stabilityCondition ∧ H.weightDynamics

theorem hebbian_learning_plasticity_closed_from_evidence
    (H : HebbianLearningPlasticityPackage) (Ev : HebbianLearningPlasticityEvidence H) :
    HebbianLearningPlasticityClosed H := by
  exact And.intro Ev.learningRuleClosed
    (And.intro Ev.stabilityConditionClosed Ev.weightDynamicsClosed)

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse