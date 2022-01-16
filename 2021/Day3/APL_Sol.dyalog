input ← ⍎¨↑⊃⎕NGET 'Day3/input.txt' 1
gamma_rate ← {n←(+⌿⍵) ⋄ n≥(≢⍵)-n}
sol_pt1 ← {×/2⊥⍉(~,[0.5]⊢)∘gamma_rate ⍵}

oxy_idx ← {(≢⍵)≤1:⍵⋄∇↑(1↓⊢)¨(∊(⊃gamma_rate ⍵)=1↑⍉⍵)/↓⍵}∘({⍵,⍳≢⍵}⊢)
co2_idx ← {(≢⍵)≤1:⍵⋄∇↑(1↓⊢)¨(∊(~⊃gamma_rate ⍵)=1↑⍉⍵)/↓⍵}∘({⍵,⍳≢⍵}⊢)
sol_pt2 ← (×/2⊥(⍉⊢))∘{({(⊃↓(¯1↑⍉co2_idx ⍵))⊃↓⍵}⍵),[0.5]{(⊃↓(oxy_idx ⍵))⊃↓⍵}⍵}
