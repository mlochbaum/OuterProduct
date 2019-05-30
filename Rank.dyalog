&'=== The Rank Operator ===
&'
&'      ⍝ Two Reverses
⊢a←2 3 6⍴⍳36
⌽a
⊖a
&'      ⍝ Reverse with Rank
⌽⍤2⊢a
⊖⍤2⊢a
&'      ⍝ More functions with Rank
⊢A←?5 7⍴10  ⍝ A random array
+⌿⍤2⊢A
+⌿⍤1⊢A
2↑⍤2⊢A
2↑⍤1⊢A
&'      ⍝ Dyadic functions with Rank
'rank' ∊ 'array'
'rank' ∊ ↑'array' 'shape' 'bound'  ⍝ A 3 by 5 table
'rank' ∊⍤1 ↑'array' 'shape' 'bound'
&'      ⍝ Dyadic functions with Rank
'"' (,⍤1) (4 5⍴⎕A) (,⍤1) '",'
fmt ← {(⍕⍺),': ',⍵}  ⍝ Print ⍺ and join with ': ' to ⍵
(⍳4) (fmt⍤0 1) 4 5⍴⎕A
&'      ⍝ Scalar extension
2 * ⍳6     ⍝ Some powers of 2
(⍳6) * 2   ⍝ Some squares
(⍳6) * ⍳6  ⍝ Some self-exponents
&'      ⍝ A scalar outer product
3 4 5 (-⍤0 1) ⍳5  ⍝ Same as ∘.-
3 4 5 (-⍤1 0) ⍳5  ⍝ The axes are reversed!
&'      ⍝ Maximum distance among 3-D points
⊢A ← ?6 3⍴0
len ← {0.5 *⍨ +⌿ ⍵*2}
⌈/, {len ⍺-⍵}⍤99 1⍤1 99⍨ A
⌈/, len -⍤1 0⍤0 1⍤1⍨ ⍉A
&'
&'Done with this demo!
&'The next section is in Haskell!
&'Once it's done, run
&']demo /app/Thinking
