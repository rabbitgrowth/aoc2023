data←(⍎'¯'@('-'∘=))¨⊃⎕NGET'09.txt'1
⎕←+/{+/last ⊣{¯2-/⍵⊣last ,←⊃⌽⍵}⍣{0=+/⍺}⍵⊣last ←⍬}¨data
⎕←+/{-/first⊣{¯2-/⍵⊣first,←⊃ ⍵}⍣{0=+/⍺}⍵⊣first←⍬}¨data
