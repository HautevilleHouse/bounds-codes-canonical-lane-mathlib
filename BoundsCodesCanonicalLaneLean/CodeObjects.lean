import Mathlib.Combinatorics.CodingTheory.Basic

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeObject where
  alphabet : Type u
  length : ℕ
  code : Set (alphabet ^ length)
  distance : ℕ
  minimalDistanceAtLeast : dmin ≥ distance
  rate : ℚ
  meetsSingletonBound : Prop
  conclusion : meetsSingletonBound

def CodeClosed (C : CodeObject) : Prop :=
  C.meetsSingletonBound

end BoundsCodesCanonicalLaneLean
end HautevilleHouse