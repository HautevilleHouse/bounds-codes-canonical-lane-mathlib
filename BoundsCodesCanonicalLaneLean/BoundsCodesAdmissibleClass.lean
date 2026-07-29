import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure AdmissibleClass where
  object : BoundsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BoundsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundsCodesCanonicalLaneLean
end HautevilleHouse