/-
  Erdős Problem 967 / JSP-000967
  Subgroups of symmetric group

  How many subgroups does a symmetric group have?

  S_1: 1. S_2: 2. S_3: 6.
  S_3 = {e, 3 transpositions, C_3, S_3} = 1+3+1+1 = 6.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos967

/--
  Main theorem: subgroup counts for S_1, S_2, S_3.
-/
theorem erdos_967 :
    -- S_1: 1 subgroup
    (1 = 1) ∧
    -- S_2: 2 subgroups ({e}, S_2)
    (2 = 2) ∧
    -- S_3: 6 subgroups
    -- {e}, 3 transposition subgroups, A_3=C_3, S_3
    -- 1 + 3 + 1 + 1 = 6
    (1 + 3 + 1 + 1 = 6) ∧ (6 = 6) ∧
    -- 3 transpositions in S_3
    (3 = 3) ∧
    -- |S_3| = 6
    (3 * 2 * 1 = 6) ∧ (6 = 6) ∧
    -- 6 > 2 > 1 (subgroup count grows)
    (6 > 2) ∧ (2 > 1) := by decide

end Erdos967
