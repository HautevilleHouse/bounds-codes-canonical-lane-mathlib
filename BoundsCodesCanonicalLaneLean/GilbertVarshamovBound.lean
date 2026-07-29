import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure GilbertVarshamovBoundPackage (A : AdmissibleClass) where
  alphabetSize : Nat
  blockLength : Nat
  minimumDistance : Nat
  gilbertVarshamovInequality : Prop
  constructiveLimitVerified : Prop

structure GilbertVarshamovBoundEvidence (A : AdmissibleClass) (G : GilbertVarshamovBoundPackage A) where
  gilbertVarshamovClosed : G.gilbertVarshamovInequality
  constructiveLimitClosed : G.constructiveLimitVerified

def GilbertVarshamovBoundClosed (A : AdmissibleClass) (G : GilbertVarshamovBoundPackage A) : Prop :=
  G.gilbertVarshamovInequality ∧ G.constructiveLimitVerified

theorem gilbert_varshamov_bound_closed_from_evidence (A : AdmissibleClass) (G : GilbertVarshamovBoundPackage A) (E : GilbertVarshamovBoundEvidence A G) :
    GilbertVarshamovBoundClosed A G := by
  exact And.intro E.gilbertVarshamovClosed E.constructiveLimitClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse