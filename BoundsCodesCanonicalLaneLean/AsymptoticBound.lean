import BoundsCodesCanonicalLaneLean.BoundsEnumeration

/-!
# Asymptotic Bound Package
-/

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure AsymptoticBoundPackage (A : AdmissibleClass) (C : CodeConstructionPackage A) (B : BoundsEnumerationPackage A C) where
  asymptoticRate : ℝ → Prop
  asymptoticRelativeDistance : ℝ → Prop
  optimalRateAsymptotic : Prop
  optimalDistanceAsymptotic : Prop
  channelCapacityAsymptotic : Prop
  errorExponentAsymptotic : Prop

def AsymptoticBoundClosed (A : AdmissibleClass) (C : CodeConstructionPackage A) (B : BoundsEnumerationPackage A C) (P : AsymptoticBoundPackage A C B) : Prop :=
  P.optimalRateAsymptotic ∧ P.optimalDistanceAsymptotic ∧ P.channelCapacityAsymptotic ∧ P.errorExponentAsymptotic

end BoundsCodesCanonicalLaneLean
end HautevilleHouse