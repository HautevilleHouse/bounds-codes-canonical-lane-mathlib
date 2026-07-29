import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure ErrorControlCodingScheme where
  informationRate : ℝ
  blockErrorProbability : ℝ
  codingGain : ℝ
  decodingLatency : ℕ
  generatorPolynomial : ℕ → ℕ

structure CodingSchemeEvidence (C : ErrorControlCodingScheme) where
  informationRatePositive : C.informationRate > 0
  blockErrorProbabilityBounded : C.blockErrorProbability ≤ 1
  codingGainPositive : C.codingGain ≥ 0
  decodingLatencyFinite : C.decodingLatency > 0

def CodingSchemeClosed (C : ErrorControlCodingScheme) : Prop :=
  C.informationRate > 0 ∧ C.blockErrorProbability ≤ 1 ∧ C.codingGain ≥ 0 ∧ C.decodingLatency > 0

theorem coding_scheme_closed_from_evidence (C : ErrorControlCodingScheme)
    (E : CodingSchemeEvidence C) : CodingSchemeClosed C := by
  exact And.intro E.informationRatePositive
    (And.intro E.blockErrorProbabilityBounded
      (And.intro E.codingGainPositive E.decodingLatencyFinite))

end BoundsCodesCanonicalLaneLean
end HautevilleHouse