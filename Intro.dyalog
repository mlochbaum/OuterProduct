&'You are now running an APL demo!
&'There are some whitespace glitches in ]demo: in particular you may not see a six-space prompt on exit.
&'Keep calm and continue to type or rerun APL as usual.
&'
&'In an APL session you can edit any previous statement before running it.
&'When you hit enter the new version is run and the old line is restored.
&'If there's a demo line waiting it also comes back so you don't lose it.
&'
&'=== APL: The Basics ===
&'
&'      ⍝ Function application
7 + 4
- 2
2 ! 5  ⍝ Ways to choose a set of 2 items out of 5
times ← ×
9 times 1
&'      ⍝ Order of operations
4  +  3  ÷  -  2  ×  2
&'      ⍝ Lists
2 0 1 9
'λ' (4.5 2.2) 'string'
&'      ⍝ Magic
3 2 1 × 2 4 6
'λ' (4.5 2.2) 'string' = 'r'
&'      ⍝ Functions as arguments?
2 -⍨ 5
-⍨ 4
&'      ⍝ Operator valence
⌊/ 2 0 3 5 4     ⍝ Reduction (fold)
2 ⌊/ 2 0 3 5 4   ⍝ Windowed reduction
-∘÷ 0.5          ⍝ Composition
3 -∘÷ 0.5        ⍝ Weird skewed composition
&'
&'Done with this demo!
&'When the next section begins, run
&']demo /app/Outer  ⍝ Not actually defined yet. Come back later!
