import BoundsCodesCanonicalLaneLean.ErrorCorrectionBounds

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure LinearProgrammingBoundPackage {C : CodeParametersPackage} (E : ErrorCorrectionBoundPackage C) where
  delarteExtendedLP : Prop
  mcelieceRodemichRumseyWelch : Prop
  lpAsymptoticImprovement : Prop
  lpData : Prop

structure LinearProgrammingBoundEvidence {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    (L : LinearProgrammingBoundPackage E) where
  delarteExtendedLPClosed : L.delarteExtendedLP
  mcelieceRodemichRumseyWelchClosed : L.mcelieceRodemichRumseyWelch
  lpAsymptoticImprovementClosed : L.lpAsymptoticImprovement
  lpDataClosed : L.lpData

def LinearProgrammingBoundClosed {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    (L : LinearProgrammingBoundPackage E) : Prop :=
  L.delarteExtendedLP ∧ L.mcelieceRodemichRumseyWelch ∧ L.lpAsymptoticImprovement ∧ L.lpData

theorem linear_programming_bound_closed_from_evidence
    {C : CodeParametersPackage} {E : ErrorCorrectionBoundPackage C}
    (L : LinearProgrammingBoundPackage E) (Ev : LinearProgrammingBoundEvidence L) :
    LinearProgrammingBoundClosed L := by
  exact And.intro Ev.delarteExtendedLPClosed
    (And.intro Ev.mcelieceRodemichRumseyWelchClosed
      (And.intro Ev.lpAsymptoticImprovementClosed Ev.lpDataClosed))

end BoundsCodesCanonicalLaneLean
end HautevilleHouse