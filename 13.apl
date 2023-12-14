maps←(↑¨×⍤≢¨⊆⊢)'#'=⊃⎕NGET'13.txt'1
Axis←⊃⍤⍸=∘((⍳¯1+≢)((+/⍤,≠⌿)↓(↑⌊⍥≢↑¨,⍥⊂∘⊖)↑)¨⊂)
Axes←Axis,Axis∘⍉
Sum←{100⊥⊃+/⍵Axes¨maps}
⎕←Sum 0
⎕←Sum 1
