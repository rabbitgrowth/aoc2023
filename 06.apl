lines←⊃⎕NGET'06.txt'1
time distance←(⍎⍳∘':'↓⊢)¨lines
⎕←×/time{⍵+.<(⌽×⊢)⍳⍺-1}¨distance
