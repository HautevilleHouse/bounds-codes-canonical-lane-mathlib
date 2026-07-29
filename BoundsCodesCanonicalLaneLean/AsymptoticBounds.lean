import BoundsCodesCanonicalLaneLean.SpherePackingBounds

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure AsymptoticBoundPackage {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    {L : LinearProgrammingBoundPackage E} (S : SpherePackingBoundPackage L) where
  plotkinBound : Prop
  zyablovBound : Prop
  blokhZyablovBound : Prop
  asymptoticData : Prop

structure AsymptoticBoundEvidence {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    {L : LinearProgrammingBoundPackage E} {S : SpherePackingBoundPackage L}
    (A : AsymptoticBoundPackage S) where
  plotkinBoundClosed : A.plotkinBound
  zyablovBoundClosed : A.zyablovBound
  blokhZyablovBoundClosed : A.blokhZyablovBound
  asymptoticDataClosed : A.asymptoticData

def AsymptoticBoundClosed {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    {L : LinearProgrammingBoundPackage E} {S : SpherePackingBoundPackage L}
    (A : AsymptoticBoundPackage S) : Prop :=
  A.plotkinBound ∧ A.zyablovBound ∧ A.blokhZyablovBound ∧ A.asymptoticData

theorem asymptotic_bound_closed_from_evidence
    {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    {L : LinearProgrammingBoundPackage E} {S : SpherePackingBoundPackage L}
    (A : AsymptoticBoundPackage S) (Ev : AsymptoticBoundEvidence A) : AsymptoticBoundClosed A := by
  exact And.intro Ev.plotkinBoundClosed
    (And.intro Ev.zyablovBoundClosed
      (And.intro Ev.blokhZyablovBoundClosed Ev.asymptoticDataClosed))

end BoundsCodesCanonicalLaneLean
end HautevilleHouse