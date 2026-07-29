import BoundsCodesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeSpace where
  alphabet : Type u
  length : Nat
  vectors : Type v

definitionalEncoder : Type u -> Type v

structure AdmittedCodeObject where
  space : CodeSpace
  linearClosure : Prop
  minimumDistance : Prop
  dualConstraints : Prop
  conclusions : linearClosure ∧ minimumDistance ∧ dualConstraints

end BoundsCodesCanonicalLaneLean
end HautevilleHouse