import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ApproximationTheorem (B : BoundsAdmittedObject) where
  approximatingSequence : ℕ → B.codeSpace
  limitBounds : ∀ n : ℕ, B.lowerBound ≤ B.boundsFunction (approximatingSequence n) ∧ B.boundsFunction (approximatingSequence n) ≤ B.upperBound
  limitApproachesBound : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, |B.boundsFunction (approximatingSequence n) - (if B.boundsFunction (approximatingSequence n) < B.lowerBound then B.lowerBound else B.upperBound)| < ε
  approximationClosed : Prop
  approximationTerm : approximationClosed

theorem approximation_implies_closure (B : BoundsAdmittedObject) (A : ApproximationTheorem B) : A.approximationClosed := by
  exact A.approximationTerm

end BoundsCodesCanonicalLaneLean
end HautevilleHouse