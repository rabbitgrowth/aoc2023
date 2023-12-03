data←↑⊃⎕NGET'03.txt'1
num←data∊⎕D
sym←(1∊⊢)⌺3 3⊢num⍱'.'=data
Crop←(⊃,/)⊆¨⍥↓
nums←⍎¨num Crop data
⎕←+/nums/⍨∨/¨num Crop sym
