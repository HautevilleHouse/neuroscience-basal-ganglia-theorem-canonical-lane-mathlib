import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure HebbianLearningPackage where
  synapticWeight : Type
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  synapticWeightClosed : H.synapticWeight
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.synapticWeight ∧ H.preSynapticActivity ∧ H.postSynapticActivity ∧
  H.weightUpdateRule ∧ H.longTermPotentiation ∧ H.longTermDepression ∧
  H.spikeTimingDependentPlasticity

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.synapticWeightClosed
    (And.intro E.preSynapticActivityClosed
      (And.intro E.postSynapticActivityClosed
        (And.intro E.weightUpdateRuleClosed
          (And.intro E.longTermPotentiationClosed
            (And.intro E.longTermDepressionClosed E.spikeTimingDependentPlasticityClosed)))))

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse