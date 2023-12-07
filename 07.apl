labels←'23456789TJQKA'
types←⍬(,2)(2 2)(,3)(2 3)(,4)(,5)
Label←labels∘⍳
Type←types⍳∘⊂∘(⊂⍤⍋⌷⊢)1~⍨≢⍤⊢⌸

data←⎕CSV⍠'Separator' ' '⊢'07.txt'⍬(1 2)
hands←Label↑⊣/data
bids ←      ⊢/data
⎕←bids+.×⍋⍋(Type⍤1⊢hands),⍪⍋⍋hands
