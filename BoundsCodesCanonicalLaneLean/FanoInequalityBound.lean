import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure FanoInequalitySystem where
  inputAlphabetSize : ℕ
  outputAlphabetSize : ℕ
  conditionalEntropy : ℝ
  errorProbability : ℝ
  boundHolds : Prop

structure FanoBoundEvidence (F : FanoInequalitySystem) where
  inputPositive : F.inputAlphabetSize > 0
  outputPositive : F.outputAlphabetSize > 0
  conditionalEntropyNonneg : 0 ≤ F.conditionalEntropy
  errorProbabilityNonneg : 0 ≤ F.errorProbability ∧ F.errorProbability ≤ 1
  fanoBoundDerived : F.boundHolds

def FanoBoundClosed (F : FanoInequalitySystem) : Prop :=
  F.inputAlphabetSize > 0 ∧ F.outputAlphabetSize > 0 ∧
  0 ≤ F.conditionalEntropy ∧ (0 ≤ F.errorProbability ∧ F.errorProbability ≤ 1) ∧
  F.boundHolds

theorem fano_bound_closed_from_evidence (F : FanoInequalitySystem)
    (E : FanoBoundEvidence F) : FanoBoundClosed F := by
  exact And.intro E.inputPositive
    (And.intro E.outputPositive
      (And.intro E.conditionalEntropyNonneg
        (And.intro E.errorProbabilityNonneg E.fanoBoundDerived)))

end BoundsCodesCanonicalLaneLean
end HautevilleHouse