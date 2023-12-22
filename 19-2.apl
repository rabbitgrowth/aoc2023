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
        var←  ⊃cond
        cmp← 2⊃cond
        num←⍎2↓cond
        idx←'xmas'⍳var
        range←idx⊃ranges
        mask←('<>'⍳cmp)⊃range(<,⍥⊂>)num
        count←name Count (⊂mask/range)@idx⊢ranges
        (idx⊃ranges)←range/⍨~mask
        count
    }¨cases
}
⎕←'in' Count 4⍴⊂⍳4000
