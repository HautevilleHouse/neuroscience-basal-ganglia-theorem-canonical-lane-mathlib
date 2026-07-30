import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure BasalGangliaCircuitModelPackage where
  striatumInput : ℝ
  globusPallidusInternal : ℝ
  globusPallidusExternal : ℝ
  subthalamicNucleus : ℝ
  substantiaNigraCompacta : ℝ
  thalamicOutput : ℝ
  connectivityMatrix : List (List ℝ)
  dynamicsEquations : Prop
  fixedPointExistence : Prop
  fixedPointStability : Prop

structure BasalGangliaCircuitModelEvidence (B : BasalGangliaCircuitModelPackage) where
  dynamicsEquationsClosed : B.dynamicsEquations
  fixedPointExistenceClosed : B.fixedPointExistence
  fixedPointStabilityClosed : B.fixedPointStability

def BasalGangliaCircuitModelClosed (B : BasalGangliaCircuitModelPackage) : Prop :=
  B.dynamicsEquations ∧ B.fixedPointExistence ∧ B.fixedPointStability

theorem basal_ganglia_circuit_model_closed_from_evidence
    (B : BasalGangliaCircuitModelPackage) (Ev : BasalGangliaCircuitModelEvidence B) :
    BasalGangliaCircuitModelClosed B := by
  exact And.intro Ev.dynamicsEquationsClosed
    (And.intro Ev.fixedPointExistenceClosed Ev.fixedPointStabilityClosed)

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse