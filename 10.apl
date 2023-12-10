data←↑⊃⎕NGET'10.txt'1
chars←'|JL7F-'
masks←↓(⊢(⌿⍨)0 2∊⍨+/)⍉2⊥⍣¯1⌽¯1+⍳16
dirs←(¯1 0)(1 0)(0 ¯1)(0 1)
moves←(masks/¨⊂dirs)[chars⍳data]
start←⊃⍸'S'=data
idx←masks⍳⊂dirs{3::0 ⋄ (⊂-⍺)∊⊃moves⌷⍨⍺+⍵}¨⊂start
(start⌷data)←idx⊃chars
(start⌷moves)←⊂dirs/⍨idx⊃masks
move←⊃dirs/⍨idx⊃masks
path←move{next←⍺+⊃⌽⍵ ⋄ start≡next:⍵ ⋄ (⊃(⊂-⍺)~⍨⊃next⌷moves)∇⍵,⊂next}⊂start
⎕←2÷⍨≢path
blocks←{m←∨/u d l r←⍵ ⋄ 3 3⍴0 u 0 l m r 0 d 0}¨masks
clean←1+7|¯1+((⍴data)↑⍸⍣¯1{⍵[⍋⍵]}path)×chars⍳data
big←⊃⍪/,/blocks[clean]
⎕←+/,(7=clean)∧((≠⍀∧≠\)big)[3×⍳⍴data]
