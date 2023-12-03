data←↑⊃⎕NGET'03.txt'1
num←data∊⎕D
sym←⍸num⍱'.'=data
head←⍸2</0,num
idx←head(∊⍨⊂⊢)⍸num
nums←(⍎⌷∘data¨)¨idx
Adj←(1∊1 1∘(∧.≥)¨⍤(|∘.-⍥⊆))
⎕←+/nums/⍨sym∘Adj¨idx
gear←⍸'*'=data
⎕←{+/×/nums[⍸⍤1⊢⍵⌿⍨2=+/⍵]}gear∘.Adj idx
