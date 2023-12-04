lines←⊃⎕NGET'04.txt'1
wins←{+/⍤∊⍨/⍎¨1↓⍵⊆⍨~⍵∊':|'}¨lines
⎕←+/⌊2*wins-1
cards←≢wins
count←cards⍴1
{count+←count[⍵]×(-⍵)⌽cards↑wins[⍵]⍴1}¨⍳cards
⎕←+/count
