import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure ConnectomicProjectionsPackage where
  sourceRegions : List String
  targetRegions : List String
  projectionMatrix : List (List ℝ)
  topologicalProperties : Prop
  projectionExistence : Prop
  projectionStrength : Prop

structure ConnectomicProjectionsEvidence (C : ConnectomicProjectionsPackage) where
  topologicalPropertiesClosed : C.topologicalProperties
  projectionExistenceClosed : C.projectionExistence
  projectionStrengthClosed : C.projectionStrength

def ConnectomicProjectionsClosed (C : ConnectomicProjectionsPackage) : Prop :=
  C.topologicalProperties ∧ C.projectionExistence ∧ C.projectionStrength

theorem connectomic_projections_closed_from_evidence
    (C : ConnectomicProjectionsPackage) (Ev : ConnectomicProjectionsEvidence C) :
    ConnectomicProjectionsClosed C := by
  exact And.intro Ev.topologicalPropertiesClosed
    (And.intro Ev.projectionExistenceClosed Ev.projectionStrengthClosed)

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse