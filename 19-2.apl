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
        var cmp num←(⊢⊆⍨3⌊⍳⍤≢)cond
        idx←'xmas'⍳var
        range←idx⊃ranges
        mask←('<>'⍳cmp)⊃range(<,⍥⊂>)⍎num
        chosen←(⊂mask/range)@idx⊢ranges
        (idx⊃ranges)←range/⍨~mask
        name Count chosen
    }¨cases
}
⎕←'in' Count 4⍴⊂⍳4000
