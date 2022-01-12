      input ← ⍎¨⊃⎕NGET 'input.txt' 1
      
      sol_pt1 ← (+/2</⊢)input
      sol_pt2 ← (+/2</⊢)(+/¨3,/⊢)input
      sol_pt2_improved ← (+/2</3+/⊢)input
