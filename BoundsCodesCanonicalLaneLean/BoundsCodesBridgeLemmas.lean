import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let B : BoundsAdmittedObject := A.object
  B.boundProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  let B : BoundsAdmittedObject := A.object
  B.conclusion

end BoundsCodesCanonicalLaneLean
end HautevilleHouse