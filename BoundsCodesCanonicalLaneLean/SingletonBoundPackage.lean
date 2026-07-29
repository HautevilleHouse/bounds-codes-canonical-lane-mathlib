import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.CodeDefinitions

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure SingletonBoundPackage (C : CodePackage) where
  q : ℕ
  singletonBound : C.codeSize ≤ q ^ (C.length - C.minDistance + 1)
  singletonBoundClosed : singletonBound

structure SingletonBoundEvidence (C : CodePackage) (S : SingletonBoundPackage C) where
  singletonBoundClosed : S.singletonBound

def SingletonBoundClosed (C : CodePackage) (S : SingletonBoundPackage C) : Prop :=
  S.singletonBound

theorem singleton_bound_closed_from_evidence (C : CodePackage) (S : SingletonBoundPackage C) (E : SingletonBoundEvidence C S) : SingletonBoundClosed C S := by
  exact E.singletonBoundClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse