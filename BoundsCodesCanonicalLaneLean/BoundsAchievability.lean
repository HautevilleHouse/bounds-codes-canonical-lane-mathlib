import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure BoundsAchievabilityPackage where
  codeConstruction : CodeConstructionPackage
  upperBound : ℚ
  lowerBound : ℚ
  capacityAchievable : Prop
  rateAchievable : Prop
  rateAchievableTerm : rateAchievable

structure BoundsAchievabilityEvidence (B : BoundsAchievabilityPackage) where
  rateAchievableClosed : B.rateAchievable

def BoundsAchievabilityClosed (B : BoundsAchievabilityPackage) : Prop :=
  B.rateAchievable

theorem bounds_achievability_closed_from_evidence (B : BoundsAchievabilityPackage) (E : BoundsAchievabilityEvidence B) :
    BoundsAchievabilityClosed B := by
  exact E.rateAchievableClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse