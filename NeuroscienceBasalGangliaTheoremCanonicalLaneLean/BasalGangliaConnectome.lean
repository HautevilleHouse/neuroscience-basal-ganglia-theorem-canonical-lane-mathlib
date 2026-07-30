import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure BasalGangliaConnectomePackage where
  striatum : Type u
  globusPallidus : Type v
  subthalamicNucleus : Type w
  substantiaNigra : Type x
  directPathway : Prop
  indirectPathway : Prop
  hyperdirectPathway : Prop
  striatumProjectionMap : Prop
  pallidumProjectionMap : Prop
  nigralDopamineModulation : Prop
  connectomeTopologyConsistent : Prop

structure BasalGangliaConnectomeEvidence (C : BasalGangliaConnectomePackage) where
  directPathwayClosed : C.directPathway
  indirectPathwayClosed : C.indirectPathway
  hyperdirectPathwayClosed : C.hyperdirectPathway
  striatumProjectionMapClosed : C.striatumProjectionMap
  pallidumProjectionMapClosed : C.pallidumProjectionMap
  nigralDopamineModulationClosed : C.nigralDopamineModulation
  connectomeTopologyConsistentClosed : C.connectomeTopologyConsistent

def BasalGangliaConnectomeClosed (C : BasalGangliaConnectomePackage) : Prop :=
  C.directPathway ∧ C.indirectPathway ∧ C.hyperdirectPathway ∧
  C.striatumProjectionMap ∧ C.pallidumProjectionMap ∧
  C.nigralDopamineModulation ∧ C.connectomeTopologyConsistent

theorem basal_ganglia_connectome_closed_from_evidence
    (C : BasalGangliaConnectomePackage) (E : BasalGangliaConnectomeEvidence C) :
    BasalGangliaConnectomeClosed C := by
  exact And.intro E.directPathwayClosed
    (And.intro E.indirectPathwayClosed
      (And.intro E.hyperdirectPathwayClosed
        (And.intro E.striatumProjectionMapClosed
          (And.intro E.pallidumProjectionMapClosed
            (And.intro E.nigralDopamineModulationClosed
              E.connectomeTopologyConsistentClosed)))))

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse