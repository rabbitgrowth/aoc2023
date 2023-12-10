data←↑⊃⎕NGET'10.txt'1

char←'|JL7F-'
mask←{⍵⌿⍨0 2∊⍨+/⍵}⍉2⊥⍣¯1(⊢-⍳)16
dir←(¯1 0)(1 0)(0 ¯1)(0 1)
dirs←(dir/⍨mask⌷⍨char∘⍳)¨data
Next←⊂+⊃⍤⌷∘dirs

Valid←(0 0∧.<⊢)∧(⍴data)∧.≥⊢
Filter←⊢(/⍨)Valid¨

start←⊂⊃⍸'S'=data
next←(⊢(/⍨)(start∊Next)¨)Filter dir+start
steps←0
{points⊣steps+←1⊣points←⍵∪Filter⊃,/Next¨⍵}⍣≡start,next
⎕←steps
