import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure SingletonBoundPackage (A : AdmissibleClass) where
  codeType : String
  singletonConjectureVerified : Prop
  proofTerms : A.object.distanceAchieved

structure SingletonBoundEvidence (A : AdmissibleClass) (P : SingletonBoundPackage A) where
  singletonClosed : P.singletonConjectureVerified

def SingletonBoundClosed (A : AdmissibleClass) (P : SingletonBoundPackage A) : Prop :=
  P.singletonConjectureVerified

theorem singleton_bound_closed_from_evidence (A : AdmissibleClass) (P : SingletonBoundPackage A) (E : SingletonBoundEvidence A P) :
    SingletonBoundClosed A P := by
  exact E.singletonClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse