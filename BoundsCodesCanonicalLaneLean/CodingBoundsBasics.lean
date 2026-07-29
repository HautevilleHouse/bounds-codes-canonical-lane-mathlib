import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeAdmittedObject where
  alphabet : Type
  length : ℕ
  code : Set (alphabet → ℕ)
  size : ℕ
  distance : ℕ
  distanceProperty : distance > 0
  conclusion : size ≤ (Finset.card (Finset.pi Finset.univ (λ _ => Finset.univ : alphabet → Finset ℕ)))

def CodeWitnessClosed (O : CodeAdmittedObject) : Prop :=
  O.conclusion

end BoundsCodesCanonicalLaneLean
end HautevilleHouse