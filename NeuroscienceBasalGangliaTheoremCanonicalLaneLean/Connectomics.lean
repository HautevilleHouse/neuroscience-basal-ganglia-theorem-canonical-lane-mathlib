import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  connectomeGraph : Type
  nodeProperties : Prop
  edgeProperties : Prop
  globalConnectivity : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  richClubOrganization : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  connectomeGraphClosed : C.connectomeGraph
  nodePropertiesClosed : C.nodeProperties
  edgePropertiesClosed : C.edgeProperties
  globalConnectivityClosed : C.globalConnectivity
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  richClubOrganizationClosed : C.richClubOrganization

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.connectomeGraph ∧ C.nodeProperties ∧ C.edgeProperties ∧
  C.globalConnectivity ∧ C.smallWorldProperty ∧ C.modularStructure ∧
  C.richClubOrganization

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.connectomeGraphClosed
    (And.intro E.nodePropertiesClosed
      (And.intro E.edgePropertiesClosed
        (And.intro E.globalConnectivityClosed
          (And.intro E.smallWorldPropertyClosed
            (And.intro E.modularStructureClosed E.richClubOrganizationClosed)))))

end NeuroscienceBasalGangliaTheoremCanonicalLaneLean
end HautevilleHouse