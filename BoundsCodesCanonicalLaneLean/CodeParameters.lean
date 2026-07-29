import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure FiniteField where
  q : ℕ
  primePower : q > 1

def alphabetSize (q : ℕ) : ℕ := q

structure CodeParameters where
  length : ℕ
  dimension : ℕ
  minDistance : ℕ
  size : ℕ
  alphabet : FiniteField

structure CodeParametersEvidence (C : CodeParameters) where
  lengthPositive : C.length > 0
  dimensionNonnegative : C.dimension ≤ C.length
  minDistancePositive : C.minDistance > 0
  sizeBound : C.size ≤ (C.alphabet.q ^ C.length : ℕ)

def CodeParametersClosed (C : CodeParameters) : Prop :=
  C.length > 0 ∧ C.dimension ≤ C.length ∧ C.minDistance > 0 ∧ C.size ≤ (C.alphabet.q ^ C.length : ℕ)

theorem code_parameters_closed_from_evidence (C : CodeParameters) (E : CodeParametersEvidence C) : CodeParametersClosed C := by
  exact And.intro E.lengthPositive (And.intro E.dimensionNonnegative (And.intro E.minDistancePositive E.sizeBound))

end BoundsCodesCanonicalLaneLean
end HautevilleHouse