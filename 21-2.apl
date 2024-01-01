⎕PP←34
map←↑⊃⎕NGET'21.txt'1 ⍝ 131×131
plot←'#'≠map
parity←(0 1)(1 0)⍴¨⍨⊂⍴map ⍝ odd even
mask←((⌽,0 1∘↓)⊢⍪1↓⊖)∘.<⍨⍳⌈2÷⍨≢map
elf←parity∧¨⊂plot
count ←+/⍤,¨elf
corner←+/⍤,¨elf∧¨⊂mask
n←202300
⎕←(+/(count××⍨1 0+n)+corner×¯1 1×1 0+n)-(×⍨+⊢)n
