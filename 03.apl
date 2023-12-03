data←↑⊃⎕NGET'03.txt'1
num←data∊⎕D
sym←num⍱'.'=data
nums←⍎¨⊃,/num⊆¨⍥↓data
head←2</0,num
id←num×(⍴⍴+\⍤,)head
adj←{⊂∪0~⍨,⍵}⌺3 3⊢id
⎕←+/nums[∊sym/⍥,adj]
gear←'*'=data
⎕←+/×/nums[↑{⍵/⍨2=≢¨⍵}gear/⍥,adj]
