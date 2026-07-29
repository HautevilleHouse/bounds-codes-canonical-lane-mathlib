import BoundsCodesCanonicalLaneLean.AdmissibleClass

/-!
# Code Construction Package
-/

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeConstructionPackage (A : AdmissibleClass) where
  codeFamily : Type u
  generatingFunction : Type v
  weightEnumeration : Prop
  codeRate : Prop
  distanceDistribution : Prop

def CodeConstructionClosed (A : AdmissibleClass) (C : CodeConstructionPackage A) : Prop :=
  C.weightEnumeration ∧ C.codeRate ∧ C.distanceDistribution

end BoundsCodesCanonicalLaneLean
end HautevilleHouse