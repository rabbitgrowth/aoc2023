time dist←(⍳∘':'↓⊢)¨⊃⎕NGET'06.txt'1
Ways←{¯1+⍺(⌈⍤+-⌊⍤-)⍥(÷∘2)0.5*⍨(⍺*2)-4×⍵}
⎕←×/time Ways⍥ ⍎      dist
⎕←×/time Ways⍥(⍎~∘' ')dist
