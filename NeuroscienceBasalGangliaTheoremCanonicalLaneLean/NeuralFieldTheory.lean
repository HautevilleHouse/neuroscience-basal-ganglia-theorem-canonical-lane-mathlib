import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  activationFunction : Type u -> Type v
  synapticKernel : Type w
  fieldDynamics : Prop
  stationaryStates : Prop
  patternFormation : Prop
  travelingWaves : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  fieldDynamicsClosed : N.fieldDynamics
  stationaryStatesClosed : N.stationaryStates
  patternFormationClosed : N.patternFormation
  travelingWavesClosed : N.travelingWaves

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.fieldDynamics ∧ N.stationaryStates ∧ N.patternFormation ∧ N.travelingWaves

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.fieldDynamicsClosed
    (And.intro E.stationaryStatesClosed
      (And.intro E.patternFormationClosed E.travelingWavesClosed))

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse