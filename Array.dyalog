&'=== Arrays ===
&'
&'      ⍝ What's an array?
(⍳2) ∘., (⍳3) ∘., (⍳4)
(⍳2 3 4) ≡ (⍳2) ∘., (⍳3) ∘., (⍳4)
&'      ⍝ Array shape
⍴ (⍳2) ∘., (⍳3) ∘., (⍳4)
⍴ (⍳2 3) ∘., (⍳4 5)
&'      ⍝ Arrays versus nested lists
2 3 5⍴⎕A  ⍝ Rank 3 array
↓2 3 5⍴⎕A  ⍝ Rank 2 array of lists
↓↓2 3 5⍴⎕A  ⍝ List of lists of lists
&'      ⍝ Leading axis theory
⊢d ← 2 3 4 ∘.∨ 2 3 6 7  ⍝ ∨ is the Greatest Common Divisor
≢d  ⍝ Number of major cells
∪d  ⍝ Unique major cells
&'      ⍝ Empty arrays
(⍳2) ∘.× ⍬ ∘.× (⍳4)
⍴ (⍳2) ∘.× ⍬ ∘.× (⍳4)
+⌿ (⍳2) ∘.× ⍬ ∘.× (⍳4)  ⍝ Shape 0 4: no rows
+⌿ +⌿ (⍳2) ∘.× ⍬ ∘.× (⍳4)
&'      ⍝ Identity element for ∘., ?
⍬,3 2 1,⍬
⍬ ∘., 3 2 1  ⍝ APL keeps not printing anything!
⍴⍬
&'      ⍝ How many elements in an array?
×/ 2 3 4 5
×/ ⍴ (⍳2 3) ∘., (⍳4 5)
×/ (⍴ ⍳2 3) , (⍴ ⍳4 5)
(×/ ⍴ ⍳2 3) × (×/ ⍴ ⍳4 5)
&'      ⍝ Identity element for ∘.+
20 30 ∘.+ 0 ∘.+ 3 4 5 6
⍴0  ⍝ Dyalog isn't talking to me
×/⍬
&'      ⍝ Identity element for ∘.,
⊂⍬
⍴⊂⍬
((⍳2 3) ∘., (⊂⍬) ∘., (⍳4 5))  ≡  (⍳2 3) ∘., (⍳4 5)
&'
&'Done with this demo!
&'For the next section,
&']demo /app/Rank
