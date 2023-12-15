map←¯1+'.O#'⍳↑⊃⎕NGET'14.txt'1
Tilt←⍉((∊(⊂⍤⍒⌷⊢)¨)((1@1⊢∨¯1∘⌽)2∘=)⊂⊢)⍤1⍤⍉
Load←+/⌽⍤⍳⍤≢+.×1∘=
⎕←Load Tilt map
Cycle←⌽⍤⍉⍤Tilt⍣4
start←¯1+seen⍳⊂{Cycle⊃seen,←⊂⍵}⍣{seen∊⍨⊂⍺}map⊣seen←⍬
period←start-⍨≢seen
⎕←Load seen⊃⍨start+period|start-⍨1e9+1
