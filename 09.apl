data←(⍎'¯'@('-'∘=))¨⊃⎕NGET'09.txt'1
⎕←+/{+/⊃⍤⌽¨{⍵,⊂¯2-/⊃⌽⍵}⍣{0=+/⊃⌽⍺}⊂⍵}¨data
⎕←+/{-/⊃  ¨{⍵,⊂¯2-/⊃⌽⍵}⍣{0=+/⊃⌽⍺}⊂⍵}¨data