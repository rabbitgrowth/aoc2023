hands bids←↓⍉⎕CSV⍠'Separator' ' '⊢'07.txt'⍬(1 2)
labels←'23456789TJQKA'
Type ←                   (⊂⍤⍒⌷⊢)≢⍤⊢⌸
Type∆←{(⊢+≢↑5-+/)(⊢⍴⍨1⌈≢)(⊂⍤⍒⌷⊢)≢⍤⊢⌸⍵~'J'}
Label ←     labels     ∘⍳
Label∆←('J',labels~'J')∘⍳
⎕←bids+.×⍋⍋(Type ,⍥⊂Label )¨hands
⎕←bids+.×⍋⍋(Type∆,⍥⊂Label∆)¨hands
