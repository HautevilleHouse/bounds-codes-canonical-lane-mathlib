import BoundsCodesCanonicalLaneLean.LinearProgrammingBounds

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure SpherePackingBoundPackage {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    (L : LinearProgrammingBoundPackage E) where
  hammingBound : Prop
  gilbertBound : Prop
  spherePackingAsymptotic : Prop
  spherePackingData : Prop

structure SpherePackingBoundEvidence {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    {L : LinearProgrammingBoundPackage E} (S : SpherePackingBoundPackage L) where
  hammingBoundClosed : S.hammingBound
  gilbertBoundClosed : S.gilbertBound
  spherePackingAsymptoticClosed : S.spherePackingAsymptotic
  spherePackingDataClosed : S.spherePackingData

def SpherePackingBoundClosed {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    {L : LinearProgrammingBoundPackage E} (S : SpherePackingBoundPackage L) : Prop :=
  S.hammingBound ∧ S.gilbertBound ∧ S.spherePackingAsymptotic ∧ S.spherePackingData

theorem sphere_packing_bound_closed_from_evidence
    {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    {L : LinearProgrammingBoundPackage E} (S : SpherePackingBoundPackage L)
    (Ev : SpherePackingBoundEvidence S) : SpherePackingBoundClosed S := by
  exact And.intro Ev.hammingBoundClosed
    (And.intro Ev.gilbertBoundClosed
      (And.intro Ev.spherePackingAsymptoticClosed Ev.spherePackingDataClosed))

end BoundsCodesCanonicalLaneLean
end HautevilleHouse