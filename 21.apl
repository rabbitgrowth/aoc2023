⎕IO←0
map←↑⊃⎕NGET'21.txt'1
dirs←⍸3 3⍴0 1
next←{
    cell←1 1⌷⍵
    '#'=cell:'#'
    '.'=cell:'.S'['S'∊dirs⌷¨⊂⍵]
    '.'
}⌺3 3
⎕←+/,'S'=next⍣64⊢map
