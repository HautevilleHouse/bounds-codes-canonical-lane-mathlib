import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure HammingBoundPackage (A : AdmissibleClass) where
  alphabetSize : Nat
  blockLength : Nat
  minimumDistance : Nat
  hammingBoundInequality : Prop
  boundAchievedCase : Prop

structure HammingBoundEvidence (A : AdmissibleClass) (H : HammingBoundPackage A) where
  hammingBoundClosed : H.hammingBoundInequality
  boundAchievedClosed : H.boundAchievedCase

def HammingBoundClosed (A : AdmissibleClass) (H : HammingBoundPackage A) : Prop :=
  H.hammingBoundInequality ∧ H.boundAchievedCase

theorem hamming_bound_closed_from_evidence (A : AdmissibleClass) (H : HammingBoundPackage A) (E : HammingBoundEvidence A H) :
    HammingBoundClosed A H := by
  exact And.intro E.hammingBoundClosed E.boundAchievedClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse