lines←⊃⎕NGET'01.txt'1
digits←1↓⎕D
words←'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine'
⎕←+/{10⊥(⊃,⊃⍤⌽)0~⍨+⌿(⍳9)(×⍤0 1)(digits∘.=⍵)∨(↑words⍷¨⊂⍵)}¨lines
