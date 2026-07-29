import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ShannonLimitsPackage where
  channelModel : Type u
  capacity : ℚ
  shannonBound : ℚ
  strictInequality : Prop
  strictInequalityTerm : strictInequality

structure ShannonLimitsEvidence (S : ShannonLimitsPackage) where
  strictInequalityClosed : S.strictInequality

def ShannonLimitsClosed (S : ShannonLimitsPackage) : Prop :=
  S.strictInequality

theorem shannon_limits_closed_from_evidence (S : ShannonLimitsPackage) (E : ShannonLimitsEvidence S) :
    ShannonLimitsClosed S := by
  exact E.strictInequalityClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse