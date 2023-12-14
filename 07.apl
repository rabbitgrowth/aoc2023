hands bids←↓⍉⎕CSV⍠'Separator' ' '⊢'07.txt'⍬(1 2)
labels←'23456789TJQKA'
⎕←bids+.×⍋(((2↑⊂⍤⍒⌷⊢)≢⍤⊢⌸),labels∘⍳)⍤1↑hands
