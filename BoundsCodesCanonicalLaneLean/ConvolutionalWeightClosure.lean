import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ConvolutionalWeightAssignment where
  kernelSize : ℕ
  kernelWeights : List ℝ
  weightNormBound : ℝ

structure WeightClosureEvidence (W : ConvolutionalWeightAssignment) where
  kernelSizePositive : W.kernelSize > 0
  weightNormBoundClosed : 0 ≤ W.weightNormBound
  kernelWeightsBounded : (∀ w ∈ W.kernelWeights, -1 ≤ w ∧ w ≤ 1)

def WeightClosureClosed (W : ConvolutionalWeightAssignment) : Prop :=
  W.kernelSize > 0 ∧ 0 ≤ W.weightNormBound ∧ (∀ w ∈ W.kernelWeights, -1 ≤ w ∧ w ≤ 1)

theorem weight_closure_closed_from_evidence (W : ConvolutionalWeightAssignment)
    (E : WeightClosureEvidence W) : WeightClosureClosed W := by
  exact And.intro E.kernelSizePositive (And.intro E.weightNormBoundClosed E.kernelWeightsBounded)

end BoundsCodesCanonicalLaneLean
end HautevilleHouse