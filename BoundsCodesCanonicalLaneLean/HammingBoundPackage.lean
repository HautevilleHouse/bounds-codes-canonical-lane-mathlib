import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.CodeDefinitions

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure HammingBoundPackage (C : CodePackage) where
  q : ℕ -- alphabet size
  qPower : ℕ := q ^ C.length
  sphereSize : ℕ
  hammingBound : C.codeSize * sphereSize ≤ qPower
  sphereSizeComputed : sphereSize = ∑_{i=0}^{⌊(C.minDistance-1)/2⌋} (C.length choose i) * (q-1)^i
  hammingBoundClosed : hammingBound

structure HammingBoundEvidence (C : CodePackage) (H : HammingBoundPackage C) where
  sphereSizeComputedClosed : H.sphereSizeComputed
  hammingBoundClosed : H.hammingBound

def HammingBoundClosed (C : CodePackage) (H : HammingBoundPackage C) : Prop :=
  H.hammingBound

theorem hamming_bound_closed_from_evidence (C : CodePackage) (H : HammingBoundPackage C) (E : HammingBoundEvidence C H) : HammingBoundClosed C H := by
  exact E.hammingBoundClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse