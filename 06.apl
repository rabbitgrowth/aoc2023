time dist←(⍎⍳∘':'↓⊢)¨⊃⎕NGET'06.txt'1
⎕←×/¯1+time(⌈⍤+-⌊⍤-)⍥(÷∘2)0.5*⍨(time*2)-4×dist
