⎕PP←34
map←'#'=↑⊃⎕NGET'11.txt'1
empty←⍸⍤~¨(∨/,⍥⊂∨⌿)map
Dist←+/|⍤-⌿⍤⊢+⊣×empty(|⍤-/⍸)¨∘↓0 1-⍨⍤1⍉⍤⊢
pairs←((∘.<⍨⍳⍤≢)(/⍥,)∘.(↑,⍥⊂)⍨)⍸map
⎕←+/     1 Dist¨pairs
⎕←+/999999 Dist¨pairs
