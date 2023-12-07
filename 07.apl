hands bids←((↑⊣/),⍥⊂⊢/)⎕CSV⍠'Separator' ' '⊢'07.txt'⍬(1 2)
labels←'23456789TJQKA'
types←⍬(,2)(2 2)(,3)(2 3)(,4)(,5)
Label1←labels∘⍳
Label2←('J',labels~'J')∘⍳
Type1←types⍳∘⊂∘(⊂⍤⍋⌷⊢)1~⍨≢⍤⊢⌸
Type2←{~'J'∊⍵:Type1⍵ ⋄ ⌈/Type1¨(⊂⍵~'J'),¨,⊃∘.,/(⍵+.='J')⍴⊂labels}
⎕←bids+.×⍋⍋(Type1⍤1⊢hands),⍪⍋⍋Label1 hands
⎕←bids+.×⍋⍋(Type2⍤1⊢hands),⍪⍋⍋Label2 hands
