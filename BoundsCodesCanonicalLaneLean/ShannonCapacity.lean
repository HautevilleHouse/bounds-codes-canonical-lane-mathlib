import BoundsCodesCanonicalLaneLean.AsymptoticBound

/-!
# Shannon Capacity Package
-/

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ShannonCapacityPackage (A : AdmissibleClass) (C : CodeConstructionPackage A) (B : BoundsEnumerationPackage A C) (P : AsymptoticBoundPackage A C B) where
  zeroErrorCapacity : Prop
  discreteMemorylessChannel : Prop
  capacityAchievingCode : Prop
  shannonChannelCapacity : Prop
  noisyChannelCodingTheorem : Prop
  converseCodingTheorem : Prop
  channelDispersion : Prop

def ShannonCapacityClosed (A : AdmissibleClass) (C : CodeConstructionPackage A) (B : BoundsEnumerationPackage A C) (P : AsymptoticBoundPackage A C B) (S : ShannonCapacityPackage A C B P) : Prop :=
  S.zeroErrorCapacity ∧ S.shannonChannelCapacity ∧ S.noisyChannelCodingTheorem ∧ S.converseCodingTheorem ∧ S.channelDispersion

end BoundsCodesCanonicalLaneLean
end HautevilleHouse