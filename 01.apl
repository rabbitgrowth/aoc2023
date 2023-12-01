lines←⊃⎕NGET'01.txt'1
⎕←+/{(⍎⊃,⊃⍤⌽)⍵/⍨⍵∊⎕D}¨lines
