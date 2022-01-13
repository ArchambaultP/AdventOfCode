input ← ⊃ ⎕NGET 'Day2/input.txt' 1
dir_matrix ← {'forward' 'up' 'down'∘.{(⍎⊃⌽⍵)×(⍺≡⊃⍵)}' '(≠⊆⊢)¨⍵}
sol_pt1 ← {×/{(1↑⍵),-⌿∘⊖(¯2↑⍵)}+/dir_matrix ⍵}
sol_pt2 ← {{f←↑⍵[1] ⋄ u←↑⍵[2] ⋄ d←↑⍵[3] ⋄ pos←+/f⋄ depth←+/f×(+\d-u) ⋄ depth×pos}↓dir_matrix ⍵}
