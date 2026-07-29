import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.CodeDefinitions

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure GilbertVarshamovBoundPackage (C : CodePackage) where
  q : ℕ
  gilbertVarshamovBound : ∑_{i=0}^{C.minDistance-1} (C.length choose i) * (q-1)^i < q^C.length
  gilbertVarshamovBoundClosed : gilbertVarshamovBound

structure GilbertVarshamovBoundEvidence (C : CodePackage) (G : GilbertVarshamovBoundPackage C) where
  gilbertVarshamovBoundClosed : G.gilbertVarshamovBound

def GilbertVarshamovBoundClosed (C : CodePackage) (G : GilbertVarshamovBoundPackage C) : Prop :=
  G.gilbertVarshamovBound

theorem gilbert_varshamov_bound_closed_from_evidence (C : CodePackage) (G : GilbertVarshamovBoundPackage C) (E : GilbertVarshamovBoundEvidence C G) : GilbertVarshamovBoundClosed C G := by
  exact E.gilbertVarshamovBoundClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse