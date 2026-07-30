import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure NeuromodulatoryInfluencePackage where
  dopamineSignal : Prop
  acetylcholineSignal : Prop
  serotoninSignal : Prop
  neuromodulatorReceptors : Prop
  tonicPhasicDynamics : Prop
  rewardPredictionError : Prop
  plasticityGate : Prop

structure NeuromodulatoryInfluenceEvidence (N : NeuromodulatoryInfluencePackage) where
  dopamineSignalClosed : N.dopamineSignal
  acetylcholineSignalClosed : N.acetylcholineSignal
  serotoninSignalClosed : N.serotoninSignal
  neuromodulatorReceptorsClosed : N.neuromodulatorReceptors
  tonicPhasicDynamicsClosed : N.tonicPhasicDynamics
  rewardPredictionErrorClosed : N.rewardPredictionError
  plasticityGateClosed : N.plasticityGate

def NeuromodulatoryInfluenceClosed (N : NeuromodulatoryInfluencePackage) : Prop :=
  N.dopamineSignal ∧ N.acetylcholineSignal ∧ N.serotoninSignal ∧
  N.neuromodulatorReceptors ∧ N.tonicPhasicDynamics ∧
  N.rewardPredictionError ∧ N.plasticityGate

theorem neuromodulatory_influence_closed_from_evidence (N : NeuromodulatoryInfluencePackage)
    (E : NeuromodulatoryInfluenceEvidence N) : NeuromodulatoryInfluenceClosed N := by
  exact And.intro E.dopamineSignalClosed
    (And.intro E.acetylcholineSignalClosed
      (And.intro E.serotoninSignalClosed
        (And.intro E.neuromodulatorReceptorsClosed
          (And.intro E.tonicPhasicDynamicsClosed
            (And.intro E.rewardPredictionErrorClosed E.plasticityGateClosed)))))

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse