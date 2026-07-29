import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Combinatorics.InformationTheory

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeParams where
  alphabetSize : ℕ
  length : ℕ
  minDistance : ℕ
  dimension : ℕ

structure CodePackaging (P : CodeParams) where
  codeSet : Set (Fin P.alphabetSize ^ Fin P.length)
  size : ℕ
  minimumDistanceAchieved : minDistanceCode codeSet = P.minDistance

def minDistanceCode (C : Set (Fin q ^ Fin n)) : ℕ :=
  if h : C.Nonempty then Finset.min' (Finset.image (λ x => hammingDist x) (Finset.filter (λ p => p.1 ≠ p.2) (Finset.product C C))) (by
    have hprod : (Finset.filter (λ p : (Fin q ^ Fin n) × (Fin q ^ Fin n) => p.1 ≠ p.2) (Finset.product C C)).Nonempty := by
      obtain ⟨c, hc⟩ := h
      refine ⟨(c, c), ?_⟩
      have : c ≠ c := by
        intro h_eq
        exact hc (h_eq.symm ▸ hc)
      exact ⟨Finset.mem_product.mpr ⟨hc, hc⟩, this⟩
    have hmin : (Finset.image (λ (p : (Fin q ^ Fin n) × (Fin q ^ Fin n)) => hammingDist p.1 p.2) (Finset.filter (λ p => p.1 ≠ p.2) (Finset.product C C))).Nonempty := by
      refine Finset.Nonempty.image _ hprod
    exact Finset.min'_mem _ hmin
  ) else 0

structure CodeEvidence (P : CodeParams) (C : CodePackaging P) where
  sizeClosed : C.size ≥ P.dimension
  distanceClosed : C.minimumDistanceAchieved

end BoundsCodesCanonicalLaneLean
end HautevilleHouse