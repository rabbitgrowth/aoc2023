data←↑⊃⎕NGET'03.txt'1
num←data∊⎕D
sym←⍸num⍱'.'=data
head←⍸2</0,num
idx←head(∊⍨⊂⊢)⍸num
nums←(⍎⌷∘data¨)¨idx
⎕←+/nums/⍨{1∊1 1∘(∧.≥)¨|sym∘.-⍵}¨idx
gear←⍸'*'=data
⎕←{+/×/nums[⍸⍤1⊢⍵⌿⍨2=+/⍵]}gear∘.{∨/1 1∘(∧.≥)¨|⍵-⊂⍺}idx
