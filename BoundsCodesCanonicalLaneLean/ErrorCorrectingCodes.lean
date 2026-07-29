import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ErrorCorrectingCodesPackage where
  alphabet : Type u
  codeSet : Set (List alphabet)
  minimumDistance : Nat
  errorCorrectionCapability : ℕ
  errorCorrectionCapabilityTerm : errorCorrectionCapability

structure ErrorCorrectingCodesEvidence (E : ErrorCorrectingCodesPackage) where
  errorCorrectionCapabilityClosed : E.errorCorrectionCapability

def ErrorCorrectingCodesClosed (E : ErrorCorrectingCodesPackage) : Prop :=
  E.errorCorrectionCapability

theorem error_correcting_codes_closed_from_evidence (E : ErrorCorrectingCodesPackage) (Ev : ErrorCorrectingCodesEvidence E) :
    ErrorCorrectingCodesClosed E := by
  exact Ev.errorCorrectionCapabilityClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse