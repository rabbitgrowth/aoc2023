steps←','(≠⊆⊢)¯1↓⊃⎕NGET'15.txt'
Hash←(256|17×+)/⍤⌽0,⎕UCS
⎕←+/Hash¨steps
steps←((1@1∊∘'-=')⊂⊢)¨steps
Score←{
    keys vals←⊂⍬
    _←{
        key op←⍵
        idx←keys⍳⊂key
        op≡,'-':keys vals/⍨←⊂idx≠⍳≢keys
        val←⍎1↓op
        idx≤≢keys:vals[idx]←val
        keys,←⊂key
        vals,←val
        ⍬
    }¨⍵
    (⍳⍤≢×⊢)vals
}
boxes←1+Hash⍤⊃¨steps
⎕←+/boxes+.×∘Score⌸steps
