⎕IO←0
lines←⊃⎕NGET'12.txt'1
⎕←+/{
    left right←' '(≠⊆⊢)⍵
    states←'.#?'⍳left
    lengths←⍎right
    unknown←⍸2=states
    subsets←↓⍉2⊥⍣¯1⍳2*≢unknown
    arrs←{⍵@unknown⊢states}¨subsets
    +/(lengths≡2(>/-⍥⍸</)0,,∘0)¨arrs
}¨lines
