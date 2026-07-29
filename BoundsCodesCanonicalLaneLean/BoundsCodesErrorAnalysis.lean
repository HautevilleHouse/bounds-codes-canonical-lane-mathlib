import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ErrorAnalysis (B : BoundsAdmittedObject) where
  errorFunction : B.codeSpace → ℝ
  errorBound : ℝ
  errorProperty : ∀ x : B.codeSpace, |B.boundsFunction x - errorFunction x| ≤ errorBound
  errorAnalysisClosed : Prop
  errorAnalysisTerm : errorAnalysisClosed

theorem error_analysis_closure (B : BoundsAdmittedObject) (E : ErrorAnalysis B) : E.errorAnalysisClosed := by
  exact E.errorAnalysisTerm

end BoundsCodesCanonicalLaneLean
end HautevilleHouse