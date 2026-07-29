import BoundsCodesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoundsCodesCanonicalLaneLean
end HautevilleHouse