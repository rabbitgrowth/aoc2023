data←↑⊃⎕NGET'10.txt'1
chars←'|JL7F-'
masks←↓(⊢(⌿⍨)2=+/)⍉2⊥⍣¯1⌽¯1+⍳16
dirs←(¯1 0)(1 0)(0 ¯1)(0 1)
moves←((masks/¨⊂dirs),⊂⍬)[chars⍳data]
start←⊃⍸'S'=data
idx←masks⍳⊂dirs{3::0 ⋄ (⊂-⍺)∊⊃(⍺+⍵)⌷moves}¨⊂start
(start⌷data)←idx⊃chars
(start⌷moves)←⊂dirs/⍨idx⊃masks

path←⍬
curr←start
move←⊃dirs/⍨idx⊃masks
:Repeat
    path,←⊂curr
    curr+←move
    move←⊃(⊂-move)~⍨⊃moves⌷⍨curr
:Until curr≡start
⎕←2÷⍨≢path
