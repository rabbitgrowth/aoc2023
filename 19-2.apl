⎕PP←34
workflows parts←(×⍤≢¨⊆⊢)⊃⎕NGET'19.txt'1
names bodies←↓⍉↑(~⍤∊∘'{}'⊆⊢)¨workflows
Count←{
    ⍺≡,'R':0
    ⍺≡,'A':×/≢¨⍵
    cases←','(≠⊆⊢)bodies⊃⍨names⍳⊂⍺
    ranges←⍵
    +/{
        ~':'∊⍵:⍵ Count ranges
        cond name←':'(≠⊆⊢)⍵
        var←⊃cond
        Cmp←⍎2⊃cond
        num←⍎2↓cond
        idx←'xmas'⍳var
        range←idx⊃ranges
        chosen←range/⍨range Cmp num
        (idx⊃ranges)~←chosen
        name Count (⊂chosen)@idx⊢ranges
    }¨cases
}
⎕←'in' Count 4⍴⊂⍳4000
