lines←⊃⎕NGET'01.txt'1
digits←1⌽⎕D
words←'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine'
Sum←{a←⍺ ⋄ +/{10⊥(⊃,⊃⍤⌽)0~⍨10|⊃+/(⍳⍤≢×⊢)a⍷¨⊂⍵}¨⍵}
⎕← digits        Sum lines
⎕←(digits,words) Sum lines
