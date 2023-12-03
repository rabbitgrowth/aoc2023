data←↑⊃⎕NGET'03.txt'1
num←data∊⎕D
sym←⍸('.'≠data)∧~num
head←⍸2</0,num
idx←head(∊⍨⊂⊢)⍸num
nums←(⍎⌷∘data¨)¨idx
⎕←+/nums/⍨{1∊1 1∘(∧.≥)¨|sym∘.-⍵}¨idx
