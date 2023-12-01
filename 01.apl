lines←⊃⎕NGET'01.txt'1
digits←1↓⎕D
words←'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine'
Sum←+/((10⊥⊃,⊃⍤⌽)~∘0)¨
part1←(10|digits∘⍳)¨lines
part2←(⍳9)+.×words∘.⍷lines
⎕←Sum part1
⎕←Sum part1+part2
