steps←','(≠⊆⊢)¯1↓⊃⎕NGET'15.txt'
Hash←(256|17×+)/⍤⌽0,⎕UCS
⎕←+/Hash¨steps
steps←((1@1∊∘'-=')⊂⊢)¨steps
Dict←{
    keys vals←⊂⍬
    vals⊣{
        key op←⍵
        idx←keys⍳⊂key
        op≡,'-':keys vals/⍨←⊂idx≠⍳≢keys
        val←⍎1↓op
        idx≤≢keys:vals[idx]←val
        keys,←⊂key
        vals,←val
        ⍬
    }¨⍵
}
⎕←+/(Hash⍤⊃¨steps){(1+⍺)+.×(⍳⍤≢×⊢)Dict⍵}⌸steps
