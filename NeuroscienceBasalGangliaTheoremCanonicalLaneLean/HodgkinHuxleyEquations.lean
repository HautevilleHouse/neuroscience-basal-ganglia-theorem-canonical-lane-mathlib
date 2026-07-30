import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  membraneCapacitance : ℝ
  maxConductances : List ℝ
  reversalPotentials : List ℝ
  gatingVariables : List String
  differentialEquation : Prop
  initialCondition : Prop
  solutionUnique : Prop

structure HodgkinHuxleyEquationsEvidence (E : HodgkinHuxleyEquationsPackage) where
  differentialEquationClosed : E.differentialEquation
  initialConditionClosed : E.initialCondition
  solutionUniqueClosed : E.solutionUnique

def HodgkinHuxleyEquationsClosed (E : HodgkinHuxleyEquationsPackage) : Prop :=
  E.differentialEquation ∧ E.initialCondition ∧ E.solutionUnique

theorem hodgkin_huxley_equations_closed_from_evidence
    (E : HodgkinHuxleyEquationsPackage) (Ev : HodgkinHuxleyEquationsEvidence E) :
    HodgkinHuxleyEquationsClosed E := by
  exact And.intro Ev.differentialEquationClosed
    (And.intro Ev.initialConditionClosed Ev.solutionUniqueClosed)

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse