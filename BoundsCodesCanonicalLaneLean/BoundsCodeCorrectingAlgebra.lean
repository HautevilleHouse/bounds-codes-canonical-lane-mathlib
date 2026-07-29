import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure BoundsCodePolynomialSystem where
  generatorDegrees : List ℕ
  idealGenerators : List (ℕ → ℕ)
  syzygyFinite : Prop

structure PolynomialCorrectionEvidence (B : BoundsCodePolynomialSystem) where
  generatorDegreesFinite : B.generatorDegrees ≠ []
  syzygyFiniteClosed : B.syzygyFinite

def PolynomialCorrectionClosed (B : BoundsCodePolynomialSystem) : Prop :=
  B.generatorDegrees ≠ [] ∧ B.syzygyFinite

theorem polynomial_correction_closed_from_evidence (B : BoundsCodePolynomialSystem)
    (E : PolynomialCorrectionEvidence B) : PolynomialCorrectionClosed B := by
  exact And.intro E.generatorDegreesFinite E.syzygyFiniteClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse