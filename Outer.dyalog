&'=== The Outer Product Operator ===
&'
&'      ⍝ Multiplication table
∘.×⍨ 1+⍳12
&'      ⍝ Character equality
'abcd' ∘.= 'cabbage'
+/ 'abcd' ∘.= 'cabbage'
&'      ⍝ Chinese menu
meat ← 'Chicken' 'Pork' 'Beef'
style ← 'fried rice' 'lo mein' 'and broccoli' 'with black bean sauce'
meat ∘.{⍺,' ',⍵} style
↑,⌿ (12 13 14∘.+100×1+⍳4) ,∘⊂¨ meat ∘.{⍺,' ',⍵} style
&'      ⍝ Pascal's triangle
∘.!⍨ ⍳12
&'      ⍝ Sierpinski's triangle
2 | ∘.!⍨ ⍳16
&'      ⍝ Exchanging arguments
10 20 30 ∘.- 1 2 4 8
1 2 4 8 ∘.- 10 20 30
⍉ 1 2 4 8 ∘.(-⍨) 10 20 30
&'      ⍝ Commutativity
{(⍵)(⍉⍵)} ∘.<⍨ ⍳4
{(⍵)(⍉⍵)} ∘.=⍨ ⍳4
{⍵≡⍉⍵} ∘.=⍨ ⍳4
&'      ⍝ Multiple outer products
1 2 4 ∘.× 1 3 ∘.× 1 5
&'      ⍝ Outer product preserves associativity
'I.' 'II.' ∘., '1.' '2.' '3.' ∘., 'abcde'
&'
&'Done with this demo!
&'Next up is
&']demo /app/Array
