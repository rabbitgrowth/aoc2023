⎕IO←0
map←'.S#'⍳↑⊃⎕NGET'21.txt'1
dirs←⍸3 3⍴0 1
next←{
    cell←1 1⌷⍵
    2=cell:2          ⍝ rock stays as rock
    0=cell:1∊dirs⌷¨⊂⍵ ⍝ elf moves into plot?
    0                 ⍝ elf has to move
}⌺3 3
⎕←+/,1=next⍣64⊢map
