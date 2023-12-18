map←↑⊃⎕NGET'16.txt'1
Dirs←{
    '.'=⍺:⊂⍵
    '/'=⍺:⊂-⌽⍵
    '\'=⍺:⊂⌽⍵
    ('|'=⍺)∧1 0≡|⍵:⊂⍵
    ('-'=⍺)∧0 1≡|⍵:⊂⍵
    (-,⍥⊂⊢)⌽⍵
}
i←0J1
DirIdx←1+4|i⍟+.×∘1i
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
