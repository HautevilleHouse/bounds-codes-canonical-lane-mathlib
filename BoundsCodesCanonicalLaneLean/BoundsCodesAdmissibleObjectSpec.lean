import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure AdmissibleObjectSpec where
  object : BoundsAdmittedObject
  refinedBounds : Prop
  boundTightness : ∀ x : object.codeSpace, object.boundsFunction x = object.lowerBound ∨ object.boundsFunction x = object.upperBound
  specConclusion : refinedBounds ∧ boundTightness

theorem admissible_object_spec_refined (spec : AdmissibleObjectSpec) : spec.refinedBounds := by
  exact spec.specConclusion.1

theorem admissible_object_spec_tightness (spec : AdmissibleObjectSpec) : spec.boundTightness := by
  exact spec.specConclusion.2

end BoundsCodesCanonicalLaneLean
end HautevilleHouse