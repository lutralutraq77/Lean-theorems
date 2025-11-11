theorem not_and_implies_not_or_not (P Q : Prop) :
  ¬ (P ∧ Q) → (¬ P) ∨ (¬ Q) := by
  intro h  -- assume ¬(P ∧ Q)
  by_cases hP : P
  · -- Case: P is true
    right                     -- we'll show ¬Q
    intro hQ                 -- assume Q
    apply h                  -- leads to contradiction
    exact And.intro hP hQ
  · -- Case: P is false
    left                      -- we produce ¬P
    exact hP
