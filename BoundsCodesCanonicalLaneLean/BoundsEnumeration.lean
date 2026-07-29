import BoundsCodesCanonicalLaneLean.CodeConstructionPackage

/-!
# Bounds Enumeration Package
-/

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure BoundsEnumerationPackage (A : AdmissibleClass) (C : CodeConstructionPackage A) where
  linearProgrammingBound : Prop
  spherePackingBound : Prop
  gilbertVarshamovBound : Prop
  plotkinBound : Prop
  hammingBound : Prop
  singletonBound : Prop
  mrrwBound : Prop
  levyBound : Prop
  channelCapacityBound : Prop
  mcelieceRodemichRumseyWelchBound : Prop
  delsarteBound : Prop

def BoundsEnumerationClosed (A : AdmissibleClass) (C : CodeConstructionPackage A) (B : BoundsEnumerationPackage A C) : Prop :=
  B.linearProgrammingBound ∧ B.spherePackingBound ∧ B.gilbertVarshamovBound ∧
  B.plotkinBound ∧ B.hammingBound ∧ B.singletonBound ∧
  B.mrrwBound ∧ B.levyBound ∧ B.channelCapacityBound ∧
  B.mcelieceRodemichRumseyWelchBound ∧ B.delsarteBound

end BoundsCodesCanonicalLaneLean
end HautevilleHouse