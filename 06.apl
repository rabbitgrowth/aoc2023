time dist←(⍳∘':'↓⊢)¨⊃⎕NGET'06.txt'1
time1 dist1← ⍎      ¨time dist
time2 dist2←(⍎~∘' ')¨time dist
Ways←{¯1+⍺(⌈⍤+-⌊⍤-)⍥(÷∘2)0.5*⍨(⍺*2)-4×⍵}
⎕←×/time1 Ways dist1
⎕←×/time2 Ways dist2
