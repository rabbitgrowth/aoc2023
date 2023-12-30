lines←⊃⎕NGET'20.txt'1
count←≢lines
types names dsts←↓⍉↑{{(⊃⊃⍵)('%&'~⍨⊃⍵)(','~¨⍨2↓⍵)}' '(≠⊆⊢)⍵}¨lines
start←types⍳'b'
dsts←names∘⍳¨dsts
keys vals←↓⍉⊃,⍥⊂⌸/↓⍉↑⊃,/dsts,¨¨⍳count
srcs←(vals,⊂⍬)[keys⍳⍳count]
memory←0×srcs
power←count⍴0
pulses←0 0
{
    {
        3::1↓⍵
        src pulse dst←1⌷⍵
        pulses[1+pulse]+←1
        type←dst⊃types
        ('%'=type)∧pulse:1↓⍵
        '%'=type:(1↓⍵)⍪dst,(dst⊃power)    ,⍪dst⊃dsts⊣(dst⊃power)-⍨←1
        '&'=type:(1↓⍵)⍪dst,(~∧/dst⊃memory),⍪dst⊃dsts⊣((src⍳⍨dst⊃srcs)⊃dst⊃memory)←pulse
        'b'=type:(1↓⍵)⍪dst,pulse          ,⍪dst⊃dsts
    }⍣{0=≢⍺}⍉⍪0 0 start
}⍣1000⊢⍬
⎕←×/pulses
