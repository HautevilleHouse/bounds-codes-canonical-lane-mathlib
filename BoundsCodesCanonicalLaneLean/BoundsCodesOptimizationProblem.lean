import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure OptimizationProblem (B : BoundsAdmittedObject) where
  feasibleSet : Set B.codeSpace
  objectiveFunction : B.codeSpace → ℝ
  optimalValue : ℝ
  feasibilityClosed : Prop
  optimalityClosed : Prop
  feasibilityTerm : feasibilityClosed
  optimalityTerm : optimalityClosed

theorem optimization_closure (B : BoundsAdmittedObject) (O : OptimizationProblem B) : O.feasibilityClosed ∧ O.optimalityClosed := by
  exact And.intro O.feasibilityTerm O.optimalityTerm

end BoundsCodesCanonicalLaneLean
end HautevilleHouse