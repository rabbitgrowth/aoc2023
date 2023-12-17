steps←','(≠⊆⊢)¯1↓⊃⎕NGET'15.txt'
Hash←(256|17×+)/⍤⌽0,⎕UCS
⎕←+/Hash¨steps
steps←((1@1∊∘'-=')⊂⊢)¨steps
Score←{
    (⍳⍤≢+.×⊢)⊃⌽⊃{
        key op←⍺
        keys vals←⍵
        idx←keys⍳⊂key
        op≡,'-':⍵/¨⍨⊂idx≠⍳≢keys
        val←⍎1↓op
        idx≤≢keys:keys(val@idx⊢vals)
        ⍵,∘⊂¨key val
    }/(⌽⍵),⊂2⍴⊂⍬
}
boxes←1+Hash⍤⊃¨steps
⎕←+/boxes×∘Score⌸steps
