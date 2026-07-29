import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.CodeDefinitions

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure PlotkinBoundPackage (C : CodePackage) where
  q : ℕ
  d : ℕ := C.minDistance
  condition : d > (1 - 1/q) * C.length
  plotkinBound : C.codeSize ≤ if d > (1 - 1/q) * C.length then d / (d - (1 - 1/q) * C.length) else 0
  conditionClosed : condition
  plotkinBoundClosed : plotkinBound

structure PlotkinBoundEvidence (C : CodePackage) (P : PlotkinBoundPackage C) where
  conditionClosed : P.condition
  plotkinBoundClosed : P.plotkinBound

def PlotkinBoundClosed (C : CodePackage) (P : PlotkinBoundPackage C) : Prop :=
  P.condition ∧ P.plotkinBound

theorem plotkin_bound_closed_from_evidence (C : CodePackage) (P : PlotkinBoundPackage C) (E : PlotkinBoundEvidence C P) : PlotkinBoundClosed C P := by
  exact And.intro E.conditionClosed E.plotkinBoundClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse