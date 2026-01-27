-- Every natural number is either zero, or the successor of another natural number
inductive Nat' where
  | zero : Nat'
  | succ : Nat' → Nat'

-- Addition!
def Nat'.plus : Nat' → Nat' → Nat'
  -- 0 + m = m
  | zero,   m => m
  -- (succ n) + m = succ (n + m)
  | succ n, m => (n.plus m).succ

-- Tell Lean to interpret "+" as Nat'.plus
instance : Add Nat' where
  add := Nat'.plus


-- Prove that 0 + m = m
theorem Nat'.zero_add : ∀ m : Nat', zero + m = m := by
  intro m    -- introduce (declare) the variable m
  rfl        -- by Nat'.plus's definition, 0 + m = m

-- Prove that (succ n) + m = succ (n + m)
theorem Nat'.succ_add : ∀ n m : Nat', n.succ + m = Nat'.succ (n + m) := by
  intro n m
  rfl   -- once agin, this simply follows from Nat'.plus's definition

-- Prove that n + 0 = n
-- This time, we can't just use Nat'.plus's definition. It specifies that 0 + m = m, but not that n + 0 = n.
-- In Lean, we prove equalities by rewriting using rewrite rules. Once both sides are rewritten to the same thing, the equality is proved.
theorem Nat'.add_zero : ∀ n : Nat', n + zero = n := by
  intro n
  induction n
  case zero =>
    -- If you click here, you can see in the panel on the right that the current goal is zero + zero = zero
    -- Nat'.add_zero rewrites zero + m to m, so this is just a special case of that! We can use rw (rewrite) to rewrite the left side, so that both sides are identical.
    rw [Nat'.zero_add] -- Click between the brackets to see the replacement on the right

  -- For the recursive branch, n' is the number below n. In other words, n = n'.succ.
  -- ih is the induction hypothesis, the proof that n' + zero = n'.
  -- Click down line by line between the square brackets to see how the rewrites change the goal!
  case succ n' ih =>
    -- Click here to see the intial goal on the right side of the screen
    rw [Nat'.succ_add]  -- Rewrite with Nat'.succ_add to bring the succ to the outside
    rw [ih]             -- Rewrite the inside with the induction hypothesis


-- This is just one solution, you doubtlessly did something different. But as long as it typechecks, it's valid!
theorem Nat'.add_succ : ∀ n m : Nat', n + m.succ = Nat'.succ (n + m) := by
  intro n m
  induction n
  case zero =>
    rw [Nat'.zero_add]
    rw [Nat'.zero_add]
  case succ ih =>
    rw [Nat'.succ_add]
    rw [Nat'.succ_add]
    rw [ih]

theorem Nat'.add_comm : ∀ n m : Nat', n + m = m + n := by
  intro n m
  induction n
  case zero =>
    rw [Nat'.add_zero]
    rw [Nat'.zero_add]
  case succ ih =>
    rw [Nat'.add_succ]
    rw [Nat'.succ_add]
    rw [ih]

theorem Nat'.add_assoc : ∀ a b c : Nat', a + (b + c) = (a + b) + c := by
  intro a b c
  induction a
  case zero =>
    rw [Nat'.zero_add]
    rw [Nat'.zero_add]
  case succ ih =>
    rw [Nat'.succ_add]
    rw [Nat'.succ_add]
    rw [Nat'.succ_add]
    rw [ih]
