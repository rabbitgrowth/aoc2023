⎕IO←0
⎕PP←34
lines←⊃⎕NGET'18.txt'1
plan1←↑((⍎⍤⊃⍤⌽,∘⊂11 9○0J1*'RDLU'⍳⊃)¯1↓' '∘≠⊆⊢)¨lines
plan2←↑(((16⊥¯1∘↓),∘⊂11 9○0J1*⊃⍤⌽)(⎕D,⎕C⎕A)⍳¯1↓¯7∘↑)¨lines
Area←{x y←↓⍉↑+\×/⍵ ⋄ 1+(2÷⍨+/⊣/⍵)+x(|2÷⍨+.×∘(¯1∘⌽-1∘⌽))y}
⎕←Area plan1
⎕←Area plan2
