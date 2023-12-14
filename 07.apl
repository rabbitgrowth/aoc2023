hands bids←↓⍉⎕CSV⍠'Separator' ' '⊢'07.txt'⍬(1 2)
labels←'23456789TJQKA'
Type1←(⊂⍤⍒⌷⊢)≢⍤⊢⌸
Type2←{(⊢+≢↑5-+/)(⊢⍴⍨1⌈≢)Type1⍵~'J'}
Label1←labels∘⍳
Label2←('J',labels~'J')∘⍳
⎕←bids+.×⍋⍋(Type1,⍥⊂Label1)¨hands
⎕←bids+.×⍋⍋(Type2,⍥⊂Label2)¨hands
