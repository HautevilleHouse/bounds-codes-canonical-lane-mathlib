import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeParametersPackage where
  n : Nat
  k : Nat
  d : Nat
  q : Nat
  fieldSize : Nat
  codeDefined : Prop
  linearCode : Prop
  parametersConsistent : Prop

structure CodeParametersEvidence (C : CodeParametersPackage) where
  codeDefinedClosed : C.codeDefined
  linearCodeClosed : C.linearCode
  parametersConsistentClosed : C.parametersConsistent

def CodeParametersClosed (C : CodeParametersPackage) : Prop :=
  C.codeDefined ∧ C.linearCode ∧ C.parametersConsistent

theorem code_parameters_closed_from_evidence (C : CodeParametersPackage)
    (E : CodeParametersEvidence C) : CodeParametersClosed C := by
  exact And.intro E.codeDefinedClosed
    (And.intro E.linearCodeClosed E.parametersConsistentClosed)

end BoundsCodesCanonicalLaneLean
end HautevilleHouse