import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  spikeTimingDependentPlasticity : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  synapticWeightUpdate : Prop
  dopamineGatedLearning : Prop
  rewardPredictionError : Prop
  corticoStriatalSynapse : Prop
  plasticityCorticalInputsMatched : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  dopamineGatedLearningClosed : H.dopamineGatedLearning
  rewardPredictionErrorClosed : H.rewardPredictionError
  corticoStriatalSynapseClosed : H.corticoStriatalSynapse
  plasticityCorticalInputsMatchedClosed : H.plasticityCorticalInputsMatched

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.spikeTimingDependentPlasticity ∧ H.longTermPotentiation ∧ H.longTermDepression ∧
  H.synapticWeightUpdate ∧ H.dopamineGatedLearning ∧ H.rewardPredictionError ∧
  H.corticoStriatalSynapse ∧ H.plasticityCorticalInputsMatched

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.longTermPotentiationClosed
      (And.intro E.longTermDepressionClosed
        (And.intro E.synapticWeightUpdateClosed
          (And.intro E.dopamineGatedLearningClosed
            (And.intro E.rewardPredictionErrorClosed
              (And.intro E.corticoStriatalSynapseClosed
                E.plasticityCorticalInputsMatchedClosed))))))

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse