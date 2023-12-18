map←↑⊃⎕NGET'16.txt'1
Dirs←{
    '.'=⍺:⊂⍵
    '/'=⍺:⊂-⌽⍵
    '\'=⍺:⊂⌽⍵
    ('|'=⍺)∧1 0≡|⍵:⊂⍵
    ('-'=⍺)∧0 1≡|⍵:⊂⍵
    (-,⍥⊂⊢)⌽⍵
}
Energy←{
    seen←⍬
    ⍺{
        3::⍬
        key←⊂⍺⍵
        seen∊⍨key:⍬
        seen,←key
        dirs←(⍵⌷map)Dirs⍺
        (⊂⍵),⊃,/dirs∇¨dirs+⊂⍵
    }⍵
}
⎕←≢∪0 1 Energy 1 1
