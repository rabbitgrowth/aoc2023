R A←0 1
workflows parts←(×⍤≢¨⊆⊢)⊃⎕NGET'19.txt'1
(⍎'{' ',' '[a-z](?=[,}])'⎕R'←{' '⋄' '&⍵')¨workflows
⎕←+/(⍎'⋄+/x m a s×in⍬',⍨'[{}]' ',' '='⎕R'' '⋄' '←')¨parts
