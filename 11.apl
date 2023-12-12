⎕PP←34
map←'#'=↑⊃⎕NGET'11.txt'1
empty←⍸¨~(∨/,⍥⊂∨⌿)map
Dist←+/|⍤-/⍤⊢+⊣×empty(<∘(⌈/)+.∧>∘(⌊/))¨↓⍤⊢
pairs←((⊃,/)⍳⍤≢(⌷,∘⍪¨↓)¨⊂)⍸map
⎕←+/     1 Dist¨pairs
⎕←+/999999 Dist¨pairs
