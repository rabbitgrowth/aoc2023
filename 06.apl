time dist←(⍎⍳∘':'↓⊢)¨⊃⎕NGET'06.txt'1
hi lo←2÷⍨time(+,⍥⊂-)0.5*⍨(time*2)-4×dist
⎕←×/¯1+(⌈hi)-⌊lo
