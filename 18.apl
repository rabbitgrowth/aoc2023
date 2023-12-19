lines←⊃⎕NGET'18.txt'1
steps←((⍎⍤⊃⍤⌽⍴(¯1 0)(1 0)(0 ¯1)(0 1)⌷⍨'UDLR'⍳⊃)¯1↓' '∘≠⊆⊢)¨lines
big←0,⍨0⍪⍨⍸⍣¯1(⊂⍤⍋⌷⊢)(⊢+1-⌊/)+\⊃,/,¨⍨steps
idx←2×⍳2÷⍨⍴big
⎕←+/,big[¯1+idx]∨(≠\big)[idx]
