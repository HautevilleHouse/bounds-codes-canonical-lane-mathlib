import BoundsCodesCanonicalLaneLean.CodeParameters

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ErrorCorrectionBoundPackage (C : CodeParametersPackage) where
  singletonsLevy : Prop
  gilbertVarshamovBound : Prop
  mrrwBound : Prop
  errorCorrectionData : Prop

structure ErrorCorrectionBoundEvidence {C : CodeParametersPackage} (E : ErrorCorrectionBoundPackage C) where
  singletonsLevyClosed : E.singletonsLevy
  gilbertVarshamovBoundClosed : E.gilbertVarshamovBound
  mrrwBoundClosed : E.mrrwBound
  errorCorrectionDataClosed : E.errorCorrectionData

def ErrorCorrectionBoundClosed {C : CodeParametersPackage} (E : ErrorCorrectionBoundPackage C) : Prop :=
  E.singletonsLevy ∧ E.gilbertVarshamovBound ∧ E.mrrwBound ∧ E.errorCorrectionData

theorem error_correction_bound_closed_from_evidence
    {C : CodeParametersPackage} (E : ErrorCorrectionBoundPackage C)
    (Ev : ErrorCorrectionBoundEvidence E) : ErrorCorrectionBoundClosed E := by
  exact And.intro Ev.singletonsLevyClosed
    (And.intro Ev.gilbertVarshamovBoundClosed
      (And.intro Ev.mrrwBoundClosed Ev.errorCorrectionDataClosed))

end BoundsCodesCanonicalLaneLean
end HautevilleHouse