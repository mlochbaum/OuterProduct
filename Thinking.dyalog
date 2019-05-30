&'=== Thinking with Outer Product ===
&'
&'      ⍝ The Cantor set with Regex
('\d' ⎕R '\0 0 \0') '1 0 1'
('\d' ⎕R '\0 0 \0')⍣3⊢ '1'
&'      ⍝ The Cantor set without
, ({⍵,0,⍵}⍤0) 1 0 1
, ({⍵×1 0 1}⍤0) 1 0 1
,∘({⍵×1 0 1}⍤0)⍣3⊢ 1
&'      ⍝ The Cantor set with Outer!
({⍵×1 0 1}⍤0) 0 1
0 1 ({⍺×⍵}⍤0 1) 1 0 1
0 1 ∘.× 1 0 1
{ , ⍵ ∘.× 1 0 1 }⍣3⊢ 1
&'      ⍝ Associating
cantor ← { , ((∘.× ∘ 1 0 1) ⍣ ⍵) 1 }
cantor 3
(cantor 3)  ≡  , 1 0 1 ∘.× 1 0 1 ∘.× 1 0 1
cantor ← { , 1 0 1 (∘.× ⍣ ⍵) 1 }
&'      ⍝ Reducing
cantor ← { , ⊃ ∘.×/ ⍵ ⍴ ⊂1 0 1 }
3 ⍴ ⊂1 0 1
⊢l ← {⊂1,(⍵⍴0),1}⍤0 ⍳3
, ⊃ ∘.×/ l
&'      ⍝ Counting
(10 * ⍳3) ∘.× ⍳10
⊖ ↓ (10 * ⍳3) ∘.× ⍳10
(⍳1000)  ≡  , ⊃ ∘.+/ ⊖ ↓ (10 * ⍳3) ∘.× ⍳10
&'      ⍝ Counting weird ways
, ⊃ ∘.+/ ⊖ ↓ (10 * ⍳3) ∘.× 2 4 6
, ⊃ ∘.+/ 3 ⍴ ⊂ ⍳10
, ⊃ ∘.+/ ⊖ ↓ (3 * ⍳3) ∘.× 0 2
(⍳3*3) ∊ , ⊃ ∘.+/ ⊖ ↓ (3 * ⍳3) ∘.× 0 2
&'      ⍝ Cantor calculations
gm ← {*(+⌿⍟⍵)÷≢⍵}  ⍝ Geometric mean
cantor ← { 1 0 1 {,⍺∘.×⍵}⍣⍵⊢ 1 }
cgm0 ← { gm {(≢⍵)÷⍨0.5+⍸⍵} cantor ⍵ }
cgm0⍤0⊢ 5 10 17 18 19
cgm1 ← { gm  0 2 {,3÷⍨⍺∘.+⍵}⍣⍵⊢ 0.5 }
cgm1⍤0⊢ 19 20 21 22
)copy dfns cmpx
cmpx 'cgm0 19' 'cgm1 19'
&'
&'Done with this demo!
&'The last one is at
&']demo /app/Speed
