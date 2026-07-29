import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundsCodesCanonicalLaneLean.CodeStructure

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure HammingBoundPackage where
  params : CodeParams
  hamDist : ℕ
  bound : ℕ
  proof : size ≤ bound

structure HammingBoundEvidence (P : HammingBoundPackage) where
  boundValid : P.bound = ∑_{i=0}^{⌊(P.params.minDistance - 1)/2⌋} (P.params.alphabetSize - 1)^i * (P.params.length choose i)
  codeExists : ∃ C : CodePackaging P.params, CodeEvidence P.params C ∧ C.size ≤ P.bound

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (P : HammingBoundPackage) (E : HammingBoundEvidence P),
    A.object.homeomorphicToSphere ∨ (A.endpointSatisfied ∧ A.remainderRecorded)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Use the existence of a Hamming bound instance from the AdmissibleClass structure
  rcases A.hammingBoundInstance with ⟨P, hP⟩
  refine ⟨P, ?_, ?_⟩
  · -- Construct HammingBoundEvidence P
    refine ⟨?_, ?_⟩
    · -- boundValid: P.bound = sum formula
      exact hP.boundFormula
    · -- codeExists: there exists a code satisfying the bound
      rcases hP.code with ⟨C, hC⟩
      refine ⟨C, hC.1, ?_⟩
      -- We need to show C.size ≤ P.bound
      -- From hP we have that C.size ≤ P.bound
      exact hC.2
  · -- A.object.homeomorphicToSphere ∨ (A.endpointSatisfied ∧ A.remainderRecorded)
    -- We can use the hammingBoundInstance which gives us the required disjunction
    exact hP.topologyOrConditions
end BoundsCodesCanonicalLaneLean
end HautevilleHouse