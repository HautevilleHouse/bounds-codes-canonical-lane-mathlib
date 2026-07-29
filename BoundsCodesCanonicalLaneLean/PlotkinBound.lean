import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure PlotkinBoundPackage (A : AdmissibleClass) where
  alphabetSize : Nat
  blockLength : Nat
  minimumDistance : Nat
  plotkinInequality : Prop
  restrictedCaseVerified : Prop

structure PlotkinBoundEvidence (A : AdmissibleClass) (P : PlotkinBoundPackage A) where
  plotkinClosed : P.plotkinInequality
  restrictedClosed : P.restrictedCaseVerified

def PlotkinBoundClosed (A : AdmissibleClass) (P : PlotkinBoundPackage A) : Prop :=
  P.plotkinInequality ∧ P.restrictedCaseVerified

theorem plotkin_bound_closed_from_evidence (A : AdmissibleClass) (P : PlotkinBoundPackage A) (E : PlotkinBoundEvidence A P) :
    PlotkinBoundClosed A P := by
  exact And.intro E.plotkinClosed E.restrictedClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse