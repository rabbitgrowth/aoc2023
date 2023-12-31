lines←⊃⎕NGET'20.txt'1
idx←⍳≢lines
types names dsts←↓⍉↑{{(⊃⊃⍵)('%&'~⍨⊃⍵)(','~¨⍨2↓⍵)}' '(≠⊆⊢)⍵}¨lines
start←types⍳'b'
dsts←names∘⍳¨dsts
keys vals←↓⍉⊃,⍥⊂⌸/↓⍉↑⊃,/dsts,¨¨idx
srcs←(vals,⊂⍬)[keys⍳idx]
on ←0×idx
mem←0×srcs
pulses←⍬
{
    {
        3::1↓⍵
        src pulse dst←1⌷⍵
        pulses,←pulse
        type←dst⊃types
        ('%'=type)∧pulse:1↓⍵
        '%'=type:(1↓⍵)⍪dst,(dst⊃on)    ,⍪dst⊃dsts⊣(dst⊃on)-⍨←1
        '&'=type:(1↓⍵)⍪dst,(~∧/dst⊃mem),⍪dst⊃dsts⊣((src⍳⍨dst⊃srcs)⊃dst⊃mem)←pulse
        'b'=type:(1↓⍵)⍪dst,pulse       ,⍪dst⊃dsts
    }⍣{0=≢⍺}⍉⍪0 0 start
}⍣1000⊢⍬
⎕←×/≢⍤⊢⌸pulses
