import BoundsCodesCanonicalLaneLean.ShannonCapacity

/-!
# Polar Code Package
-/

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure PolarCodePackage (A : AdmissibleClass) (C : CodeConstructionPackage A) (B : BoundsEnumerationPackage A C) (P : AsymptoticBoundPackage A C B) (S : ShannonCapacityPackage A C B P) where
  channelPolarization : Prop
  polarEncoding : Prop
  successiveCancellationDecoding : Prop
  capacityAchievingRate : Prop
  errorExponentScale : Prop
  vanishingErrorProbability : Prop
  polynomialComplexity : Prop

def PolarCodeClosed (A : AdmissibleClass) (C : CodeConstructionPackage A) (B : BoundsEnumerationPackage A C) (P : AsymptoticBoundPackage A C B) (S : ShannonCapacityPackage A C B P) (Pc : PolarCodePackage A C B P S) : Prop :=
  Pc.channelPolarization ∧ Pc.capacityAchievingRate ∧ Pc.vanishingErrorProbability ∧ Pc.polynomialComplexity

end BoundsCodesCanonicalLaneLean
end HautevilleHouse