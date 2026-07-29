import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure DecoderErrorCorrectionPackage where
  codeBlockLength : ℕ
  minDistance : ℕ
  errorCount : ℕ
  correctionPossible : Prop
  decodingComplexity : Prop

structure DecoderErrorCorrectionEvidence (D : DecoderErrorCorrectionPackage) where
  minDistanceExceedsError : D.minDistance ≥ 2 * D.errorCount + 1
  correctionPossibleClosed : D.correctionPossible
  decodingComplexityClosed : D.decodingComplexity

def DecoderErrorCorrectionClosed (D : DecoderErrorCorrectionPackage) : Prop :=
  D.minDistance ≥ 2 * D.errorCount + 1 ∧ D.correctionPossible ∧ D.decodingComplexity

theorem decoder_error_correction_closed_from_evidence (D : DecoderErrorCorrectionPackage)
    (E : DecoderErrorCorrectionEvidence D) : DecoderErrorCorrectionClosed D := by
  exact And.intro E.minDistanceExceedsError
    (And.intro E.correctionPossibleClosed E.decodingComplexityClosed)

end BoundsCodesCanonicalLaneLean
end HautevilleHouse