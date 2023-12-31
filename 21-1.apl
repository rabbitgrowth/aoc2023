map←↑⊃⎕NGET'21.txt'1
elf ←'S'=map
plot←'#'≠map
⎕←+/,(plot∧(1∘⊖∨¯1∘⊖∨1∘⌽∨¯1∘⌽))⍣64⊢elf
