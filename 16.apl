map←↑⊃⎕NGET'16.txt'1
Dirs←{
    '.'=⍺:⊂⍵
    '/'=⍺:⊂-⌽⍵
    '\'=⍺:⊂⌽⍵
    ('|'=⍺)∧1 0≡|⍵:⊂⍵
    ('-'=⍺)∧0 1≡|⍵:⊂⍵
    (-,⍥⊂⊢)⌽⍵
}
DirIdx←1+4|0J1⍟0J1∘⊥
Energy←{
    seen←0⍴⍨4,⍨⍴map
    ⍺{
        3::⍬
        idx←⍵,DirIdx⍺
        idx⌷seen:⍬
        (idx⌷seen)←1
        dirs←(⍵⌷map)Dirs⍺
        (⊂⍵),⊃,/dirs∇¨dirs+⊂⍵
    }⍵
}
⎕←≢∪0 1 Energy 1 1
