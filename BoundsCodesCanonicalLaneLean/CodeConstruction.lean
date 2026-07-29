import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesCanonicalLaneLean

structure CodeConstructionPackage where
  alphabet : Type u
  codewordSet : Set (List alphabet)
  blockLength : Nat
  codeRate : ℚ
  constructionMethod : String
  existenceProved : Prop
  existenceProvedTerm : existenceProved

structure CodeConstructionEvidence (C : CodeConstructionPackage) where
  existenceProvedClosed : C.existenceProved

def CodeConstructionClosed (C : CodeConstructionPackage) : Prop :=
  C.existenceProved

theorem code_construction_closed_from_evidence (C : CodeConstructionPackage) (E : CodeConstructionEvidence C) :
    CodeConstructionClosed C := by
  exact E.existenceProvedClosed

end BoundsCodesCanonicalLaneLean
end HautevilleHouse