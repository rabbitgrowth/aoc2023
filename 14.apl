map←⍉¯1+'.O#'⍳↑⊃⎕NGET'14.txt'1
Tilt←((∊(⊂⍤⍒⌷⊢)¨)(((1@1)¯1∘⌽∨⊢)2∘=)⊂⊢)⍤1
Load←+/⍤,1∘=×⍴⍴⌽⍤⍳⍤≢
⎕←Load Tilt map
Cycle←{⍉⌽Tilt⌽⍉⌽Tilt⌽⍉Tilt⍉Tilt⍵}
start←seen⍳⊂{Cycle⊃seen,←⊂⍵}⍣{seen∊⍨⊂⍺}map⊣seen←⍬
head←start-1
loop←head-⍨≢seen
⎕←Load seen⊃⍨head+loop|head-⍨1e9+1
