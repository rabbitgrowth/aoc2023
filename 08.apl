⎕IO←0
⎕PP←34
lines←⊃⎕NGET'08.txt'1
moves←'LR'⍳⊃lines
data←(⊢⊆⍨⎕A∊⍨1∘⌷)↑2↓lines
nodes←⊣/data
lr←(nodes⍳1∘↓⍤1)data
aaa zzz←nodes⍳'AAA' 'ZZZ'
Steps←{steps⊣{node⊣steps+←1⊣node←lr⌷⍨⍵,moves⊃⍨steps|⍨≢moves}⍣⍺⍺⍵⊣steps←0}
⎕←{zzz=⍺}Steps aaa
__a __z←⊂⍤⍸⍤1⊢'AZ'∘.=⊃⍤⌽¨nodes
⎕←∧/{⍺∊__z}Steps¨__a
