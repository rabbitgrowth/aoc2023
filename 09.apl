data←(⍎'¯'@('-'∘=))¨⊃⎕NGET'09.txt'1
⎕←+/{sum⊣{¯2-/⍵⊣sum+←⊢/⍵}⍣{0=+/⍺}⍵⊣sum←0}¨data
⎕←+/{-/first⊣{¯2-/⍵⊣first,←⊃⍵}⍣{0=+/⍺}⍵⊣first←⍬}¨data
