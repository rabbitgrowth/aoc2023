lines←⊃⎕NGET'20.txt'1
count←≢lines
types names dsts←↓⍉↑{{('%&'⍳⊃⊃⍵)('%&'~⍨⊃⍵)(','~¨⍨2↓⍵)}' '(≠⊆⊢)⍵}¨lines
broadcaster←names⍳⊂'broadcaster'
dsts←names∘⍳¨dsts
keys vals←↓⍉⊃,⍥⊂⌸/↓⍉↑⊃,/dsts,¨¨⍳count
srcs←(vals,⊂⍬)[keys⍳⍳count]
memory←0×srcs
power←count⍴0
pulses←0 0
{
    {
        tail←1↓⍵
        3::tail
        src pulse dst←1⌷⍵
        pulses[1+pulse]+←1
        type←dst⊃types
        (1=type)∧pulse:tail
        1=type:tail⍪dst,(dst⊃power)    ,⍪dst⊃dsts⊣(dst⊃power)-⍨←1
        2=type:tail⍪dst,(~∧/dst⊃memory),⍪dst⊃dsts⊣((src⍳⍨dst⊃srcs)⊃dst⊃memory)←pulse
        3=type:tail⍪dst,pulse          ,⍪dst⊃dsts
    }⍣{0=≢⍺}⍉⍪0 0 broadcaster
}⍣1000⊢⍬
⎕←×/pulses
