import BoundsCodesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundsCodesCanonicalLaneLean
end HautevilleHouse