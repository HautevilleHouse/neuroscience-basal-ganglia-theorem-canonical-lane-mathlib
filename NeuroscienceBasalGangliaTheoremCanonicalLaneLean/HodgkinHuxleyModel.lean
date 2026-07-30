import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  gatingVariables : Prop
  actionPotentialGenerated : Prop
  spikeFrequencyAdaptation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membranePotentialClosed : H.membranePotential
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakChannelClosed : H.leakChannel
  gatingVariablesClosed : H.gatingVariables
  actionPotentialGeneratedClosed : H.actionPotentialGenerated
  spikeFrequencyAdaptationClosed : H.spikeFrequencyAdaptation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membranePotential ∧ H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakChannel ∧
  H.gatingVariables ∧ H.actionPotentialGenerated ∧ H.spikeFrequencyAdaptation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membranePotentialClosed
    (And.intro E.sodiumChannelClosed
      (And.intro E.potassiumChannelClosed
        (And.intro E.leakChannelClosed
          (And.intro E.gatingVariablesClosed
            (And.intro E.actionPotentialGeneratedClosed E.spikeFrequencyAdaptationClosed)))))

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse