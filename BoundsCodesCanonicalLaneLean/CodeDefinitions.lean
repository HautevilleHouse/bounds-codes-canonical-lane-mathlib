import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodePackage where
  alphabet : Type
  length : ℕ
  codeSize : ℕ
  minDistance : ℕ
  nonemptyCode : codeSize ≥ 1
  lengthPositive : length ≥ 1
  minDistancePositive : minDistance ≥ 1

structure CodeEvidence (C : CodePackage) where
  nonemptyCodeClosed : C.nonemptyCode
  lengthPositiveClosed : C.lengthPositive
  minDistancePositiveClosed : C.minDistancePositive

def CodeClosed (C : CodePackage) : Prop :=
  C.nonemptyCode ∧ C.lengthPositive ∧ C.minDistancePositive

theorem code_closed_from_evidence (C : CodePackage) (E : CodeEvidence C) : CodeClosed C := by
  exact And.intro E.nonemptyCodeClosed (And.intro E.lengthPositiveClosed E.minDistancePositiveClosed)

end BoundsCodesCanonicalLaneLean
end HautevilleHouse