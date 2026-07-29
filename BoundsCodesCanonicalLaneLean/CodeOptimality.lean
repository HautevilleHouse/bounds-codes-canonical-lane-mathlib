import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.CodeParameters
import HautevilleHouse.BoundsCodesCanonicalLaneLean.HammingBound
import HautevilleHouse.BoundsCodesCanonicalLaneLean.SingletonBound
import HautevilleHouse.BoundsCodesCanonicalLaneLean.GilbertVarshamovBound

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeOptimalityPackage (C : CodeParameters) where
  hammingOptimal : Prop
  singletonOptimal : Prop
  gilbertVarshamovOptimal : Prop

structure CodeOptimalityEvidence (C : CodeParameters) (O : CodeOptimalityPackage C) where
  hammingClosed : O.hammingOptimal
  singletonClosed : O.singletonOptimal
  gilbertVarshamovClosed : O.gilbertVarshamovOptimal

def CodeOptimalityClosed (C : CodeParameters) (O : CodeOptimalityPackage C) : Prop :=
  O.hammingOptimal ∧ O.singletonOptimal ∧ O.gilbertVarshamovOptimal

theorem code_optimality_closed_from_evidence (C : CodeParameters) (O : CodeOptimalityPackage C) (E : CodeOptimalityEvidence C O) : CodeOptimalityClosed C O := by
  exact And.intro E.hammingClosed (And.intro E.singletonClosed E.gilbertVarshamovClosed)

end BoundsCodesCanonicalLaneLean
end HautevilleHouse