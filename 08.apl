⎕IO←0
lines←⊃⎕NGET'08.txt'1
moves←'LR'⍳⊃lines
data←(⊢⊆⍨⎕A∊⍨1∘⌷)↑2↓lines
nodes←⊣/data
lr←(nodes⍳1∘↓⍤1)data
aaa zzz←nodes⍳'AAA' 'ZZZ'
steps←0
{r⊣steps+←1⊣r←lr[⍵;moves⊃⍨steps|⍨≢moves]}⍣{zzz=⍺}aaa
⎕←steps
