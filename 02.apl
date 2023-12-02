lines←⊃⎕NGET'02.txt'1
S←≠⊆⊢
split←(((' '∘S¨','∘S)¨';'∘S)∘⊃∘⌽':'∘S)¨lines
rgb←{n c←↓⍉↑⍵ ⋄ (0,⍨⍎¨n)['rgb'⍳⍨⊃¨c]}¨¨split
⎕←+/⍸(∧/12 13 14∘(∧.≥)¨)¨rgb
⎕←+/(×/∘⊃⌈/)¨rgb
