⎕IO←0
lines←⊃⎕NGET'05.txt'1
seeds←(⍎⊢↓⍨1+⍳∘':')⊃lines
maps←({↑⍎¨1↓⍵}¨×⍤≢¨⊆⊢)1↓lines
⎕←⌊/⊃{
    dst src len←↓⍉⍺[⍋⍺[;1];]
    ⍵+(0,⍨dst-src)[(≢⍺)@(0.5=1∘|)2÷⍨⍵⍸⍨∊src,¨src+len]
}/(⌽maps),⊂seeds
