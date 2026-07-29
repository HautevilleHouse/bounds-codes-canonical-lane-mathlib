import BoundsCodesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  boundsCodesConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

structure BoundsCodesTargetSpace where
  carrier : Type u
  boundMetric : carrier → carrier → ℝ
  completeness : Prop
  boundedness : Prop

def BoundsCodesAdmittedObject : Type := BoundsCodesTargetSpace

def BoundsCodesWitnessClosed (O : BoundsCodesTargetSpace) : Prop :=
  O.boundedness

def sourceRepository : String :=
  "bounds-codes-canonical-lane"

def sourceDescription : String :=
  "Bounds Codes: Encode admissible-class bridge for key bounds codes theorems"

end BoundsCodesCanonicalLaneLean
end HautevilleHouse