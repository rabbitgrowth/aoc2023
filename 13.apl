maps←(↑¨×⍤≢¨⊆⊢)'#'=⊃⎕NGET'13.txt'1
Axis←⍸⍤(⊂((∧/=⌿∨0=×⌿)↓↑⍤,⍥⊂∘⌽↑)¨⍨¯1⍳⍤+≢)⍳⍨
Axes←Axis,⍥⊂Axis⍤⍉
axes←Axes¨maps
Sum←{100⊥(+/+/¨)¨↓⍉↑⍵}
⎕←Sum axes
⎕←Sum axes~¨¨⍨{w←⍵ ⋄ ∪¨⊃,¨/Axes¨,{~@(⊂⍵)⊢w}¨⍳⍴⍵}¨maps
