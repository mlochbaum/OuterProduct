0 : 0
⎕IO←0
n←1e5 ⋄ xs←(?⍴)∘1e6¨ l←(⊢,∘⌈n÷⌽)⌈(n*(⍳÷∘2)÷⊢)(⊢+2∘|)⌈1.6⍟n
⌈(1e12÷(⊢×⌽)l)×1 0 0 0.3 cmpx (⊢(⊣,'∘.⌈',⊢)¨⌽) ('(',⍕,'⊃xs)'∘⊣)¨⍳≢xs

n←1e5 ⋄ xs←(?⍴)∘2¨ l←(⊢,∘⌈n÷⌽)⌈(n*(⍳÷∘2)÷⊢)(⊢+2∘|)⌈1.6⍟n ⋄ ⌈(1e12÷(⊢×⌽)l)×1 0 0 0.3 cmpx (⊢(⊣,'∘.∧',⊢)¨⌽) ('(',⍕,'⊃xs)'∘⊣)¨⍳≢xs

l←(⊢,∘⌈n÷⌽)⌈(n*(⍳÷∘2)÷⊢)(⊢+2∘|)⌈1.6⍟n←1e5
↑,'⌊+×<'∘.{xs∘←(?⍴)∘⍵¨ l ⋄ ⌈(1e12÷(⊢×⌽)l)×1 0 0 0.3 cmpx (⊢(⊣,'∘.',⍺,⊢)¨⌽) ('(',⍕,'⊃xs)'∘⊣)¨⍳≢xs} 50 1e4 1e9 0
↑,'∧≠'∘.{xs∘←(?⍴)∘⍵¨ l ⋄ ⌈(1e12÷(⊢×⌽)l)×1 0 0 0.3 cmpx (⊢(⊣,'∘.',⍺,⊢)¨⌽) ('(',⍕,'⊃xs)'∘⊣)¨⍳≢xs} 2
)

n =: 1e5
l =: (,n>.@%|.)>.(n^i.@-:%])(+2&|)>.1.6^.n


min_v18 =: ".;._2 ]0 : 0
 66  33  33  31  30  28  29  28  30  30  33  32  38  46  62  85 123 186 254 121  147 137  134  131  146  62
151  73  72  66  69  66  63  59  62  59  62  61  67  76  85 108 142 209 298 307  584 302  273  305  304 147
309 179 173 152 151 149 142 137 126 133 129 133 132 150 157 166 178 235 263 343  622 943  558  657  662 455
683 352 363 346 330 304 317 297 293 262 269 269 264 287 298 307 324 342 378 435  600 887 1078 1530 1336 701
)
plus_v18 =: ".;._2 ]0 : 0
 73  86  93  84  87  88  82  83  90  91  98  94  97 114 130 155 189 257 348 137  172 155  153  155  168  76
152 168 189 168 183 185 185 172 161 176 179 162 185 195 212 229 273 334 425 395  765 335  320  524  345 155
407 215 201 198 167 163 191 154 149 149 155 157 153 165 180 197 213 281 289 359  652 901  871  831  922 474
689 350 357 351 340 314 298 300 308 265 268 264 277 283 288 297 325 339 364 417  533 802 1008 1353 1286 771
)
times_v18 =: ".;._2 ]0 : 0
174 101  94 104 102 102 100 100 104 102  99  98 110 115 145 161 200 268 360 179  206 199  192  188  206 168
446 290 308 296 311 313 312 320 292 314 319 308 323 336 357 371 414 511 635 518 1072 574  571  621  641 582
634 564 489 457 402 347 320 304 301 270 266 260 267 281 294 292 323 342 385 444  572 859  762  834  822 656
693 348 351 353 333 297 297 285 310 267 260 262 273 280 285 295 320 326 354 417  536 798 1009 1343 1240 667
)
lt_v18 =: ".;._2 ]0 : 0
 41  37  53  31  54  32  53  48  53  49  64  59  79  94 166 151 197 236 247 277  330 289  222  194  156  40
 56  52  63  49  64  37  60  52  59  56  71  68  93 109 181 156 206 245 250 287  346 301  239  211  172  57
104  88 110  70 102  79  94  84  90  89 100  97 126 136 213 192 236 275 286 319  383 344  260  251  207 103
268 290 289 284 305 240 265 271 265 247 266 283 311 358 462 361 403 458 481 506  555 539  488  442  416 274
)
and_v18 =: 8 6  6  5 17  5 18 10 18 14 24 21 26 35 41 44 52 64 71 71 73 72 42 73 48 8
 ne_v18 =: 6 6 20 10 24 15 30 26 26 28 35 21 25 36 41 45 52 65 71 72 74 78 45 80 51 6
and_x18 =: 8 6  6 5 16 5 15  8 10 9 14 14 21 35 39 44 52 64 71 72 73 75 46 76 47 9
 ne_x18 =: 6 5 20 6 24 6 24 10 12 9 16 14 23 35 40 44 53 65 71 72 71 71 44 73 44 6

min_v17 =: ".;._2 ]0 : 0
 230  93  88 138 159 136 102  88  92  88  85  86  84  83  86 100 121  177  230  224  232  239  264  257  301  209
 452 172 175 169 179 173 165 174 165 170 160 161 146 144 147 168 170  210  281  279  525  489  585  552  659  414
 966 315 314 302 320 296 281 295 251 270 238 164 156 169 194 205 248  232  273  342  574  817  840  767 1161  746
1486 440 423 430 389 361 369 352 318 329 290 269 272 289 293 307 333  334  398  427  538  806  966 1299 1769 1073
)
plus_v17 =: ".;._2 ]0 : 0
 209 181 167 162 170 166 165 160 165 154 156 145 152 146 165 188 219  283  389  293  313  320  358  340  379  202
 445 315 282 286 279 306 260 284 188 273 214 172 176 199 224 245 309  360  464  429  810  607  694  671  734  347
 928 286 286 271 298 259 275 264 173 281 157 170 165 181 187 242 273  309  334  440  718 1033 1202 1275 1369  845
1042 425 412 412 380 351 353 335 326 300 286 496 392 419 507 511 506  500  519  542  654  914 1121 1506 1807 1071
)
times_v17 =: ".;._2 ]0 : 0
 345 161 158 156 160 146 147 143 151 141 137 129 141 146 177 188 232  299  395  296  316  316  311  384  346  265
 792 350 361 355 342 337 361 351 332 334 347 332 320 361 366 413 448  528  685  600 1117  508  726  702  794  584
 876 737 595 538 462 397 347 326 313 280 292 288 287 295 298 325 345  398  457  490  693 1042 1106 1167 1253  876
1105 429 439 411 391 376 361 344 329 282 271 487 419 427 552 594 776  758  577  589  745  933 1246 1537 1871 1089
)
lt_v17 =: ".;._2 ]0 : 0
  46  38  53  31  52  33  53  46  57  51  69  62  83  96 175 179 320  464  619  245  240  235  239  249  278   47
  68  53  77  53  74  44  73  56  67  60  74  73  97 114 201 217 379  530  668  952 1324  462  494  499  494   66
 113  99 110  79 103  90  97  92  97  91 108 102 127 146 225 227 380  548  677  970 1331 2016  667  784  895  112
 318 298 311 291 301 281 308 291 291 274 288 281 339 359 457 518 765 1030 1180 1519 2095 3230 4341 5882 2813  306
)
and_v17 =: 25 15 15 15 23 15 24 17 24 21 31 30 35 44 49 53 62 74 78 78 79 85 54 87 55 24
 ne_v17 =: 14 15 25 15 29 15 32 26 31 29 42 30 36 43 49 55 61 74 79 79 80 79 49 81 50 14


min_gcc =: ".;._2 ]0 : 0
51 46 45 45 46 45 48 47 49 51 49 54 58 75 67 82 114 124 260 580 688 736 981 1042 1128 1744
50 49 59 49 64 51 65 59 66 62 68 66 74 76 86 94 131 135 269 368 294 810 877 1018 1437 1762
181 181 189 181 185 182 191 180 187 185 190 190 198 189 205 204 222 250 289 345 401 581 871 957 1154 1733
219 224 222 219 255 223 262 220 224 225 256 231 257 263 289 236 250 272 320 308 373 495 538 1054 1564 1566
)
plus_gcc =: ".;._2 ]0 : 0
23 26 30 29 31 24 32 31 33 32 33 35 39 54 48 62 96 108 208 500 545 658 928 938 1195 2061
48 51 59 50 63 50 65 59 64 61 68 65 74 76 85 90 148 128 218 307 300 679 756 904 1151 2133
99 101 116 100 128 103 138 101 123 105 134 108 134 105 173 117 140 164 196 248 318 482 537 948 1148 2008
201 200 208 203 266 207 258 206 206 207 253 209 255 224 252 209 223 255 283 311 391 482 940 1066 1376 2140
)
plus_o_gcc =: ".;._2 ]0 : 0
60 57 64 56 66 57 65 62 64 64 67 67 74 94 87 106 148 164 290 649 677 758 813 891 1158 1736
121 142 137 116 133 118 137 113 169 132 139 126 147 139 158 153 179 189 244 298 265 482 577 578 1157 1479
233 230 231 230 256 231 254 232 232 268 254 235 254 268 305 243 258 279 297 324 361 505 454 622 884 1148
)
times_gcc =: ".;._2 ]0 : 0
58 58 59 59 59 59 62 61 62 64 66 67 71 89 84 100 133 145 242 536 589 744 966 958 1219 2021
49 51 59 49 64 52 83 67 83 61 68 64 73 77 84 92 122 130 219 309 305 777 1072 1166 1286 2008
215 215 215 238 215 215 221 217 217 218 219 221 225 225 226 235 242 263 297 344 413 552 716 933 1147 2007
214 202 209 201 248 205 256 205 205 206 251 208 254 223 250 208 221 254 279 310 372 527 652 807 1174 2029
)
times_o_gcc =: ".;._2 ]0 : 0
58 58 63 57 66 59 65 62 66 63 67 69 74 88 87 101 139 155 262 673 721 818 947 1105 1556 1744
205 211 184 206 211 207 218 159 195 157 215 161 220 191 222 178 218 222 268 311 269 483 612 581 876 1447
234 232 231 230 257 233 257 260 234 232 276 275 255 235 249 252 259 279 295 326 362 452 458 675 876 1159
)
lt_gcc =: ".;._2 ]0 : 0
28 28 31 30 36 29 36 34 38 40 40 42 45 61 54 73 109 121 236 673 722 841 938 1058 1574 2063
54 56 55 55 58 54 57 57 60 61 63 65 68 87 82 97 138 146 259 622 653 703 937 873 1150 1727
222 197 198 197 200 229 197 197 197 198 199 196 195 194 199 200 216 227 315 521 610 681 939 908 1153 1753
609 604 606 613 604 595 621 602 598 597 597 607 606 632 690 690 661 783 616 621 627 643 700 704 760 937
)
and_gcc =: 33 30 36 34 37 25 33 32 33 33 39 41 43 56 51 64 96 110 209 674 723 819 939 1105 1551 2026 
 ne_gcc =: 37 36 37 37 39 36 37 38 38 42 38 41 43 55 53 62 112 116 209 578 653 852 965 1058 1337 2053 

min_nat =: ".;._2 ]0 : 0
35 33 38 35 34 26 26 27 24 26 24 32 30 44 33 128 208 88 475 497 530 597 681 794 941 1446
49 48 49 45 49 49 52 48 52 52 54 56 62 75 71 82 114 118 264 673 731 820 1080 1184 1293 2054
107 107 104 107 106 108 109 99 107 102 109 104 110 108 117 112 136 136 262 383 315 772 864 958 1160 1771
226 241 224 222 220 224 225 222 208 228 218 225 221 226 224 234 223 238 262 252 268 387 441 1475 2034 1828
)
plus_nat =: ".;._2 ]0 : 0
25 21 23 22 23 20 22 24 24 26 25 32 30 42 34 197 194 91 507 475 511 609 947 946 1075 1794
50 48 49 43 48 61 56 47 49 49 52 53 57 64 58 64 94 101 207 555 542 677 862 910 1279 2008
110 107 104 107 106 107 109 99 104 101 108 103 110 107 117 112 127 132 240 292 272 746 803 896 1147 2032
226 224 218 222 220 225 256 223 209 224 218 226 221 227 234 242 224 238 247 298 312 453 536 969 1225 2038
)
plus_o_nat =: ".;._2 ]0 : 0
48 47 48 42 48 48 48 48 49 50 50 56 56 67 57 175 283 124 643 669 752 824 939 1074 1466 1757
106 107 102 107 104 107 107 99 105 102 107 104 113 120 116 112 124 123 185 402 431 498 584 619 716 1213
233 235 219 235 228 236 238 235 214 235 222 235 225 238 225 242 227 233 281 366 289 670 717 799 949 1437
)
times_nat =: ".;._2 ]0 : 0
36 36 36 36 37 37 37 39 37 42 42 50 44 59 50 226 253 114 493 538 574 689 789 963 1147 1928
50 48 49 43 48 48 50 47 49 49 51 52 57 64 57 65 94 102 204 498 566 707 838 945 1252 2014
109 116 118 111 109 112 138 112 106 103 111 105 122 109 116 113 133 138 221 304 292 815 932 1080 1485 2012
225 223 218 238 220 226 226 242 223 225 218 226 222 228 226 240 239 249 244 263 311 452 562 1126 1218 2019
)
times_o_nat =: ".;._2 ]0 : 0
48 47 49 42 48 48 64 57 48 50 51 56 56 68 58 153 235 155 495 521 579 687 860 894 1196 1721
110 110 104 109 107 110 110 100 107 102 111 105 113 116 116 115 154 130 196 406 438 481 579 580 725 1157
240 235 220 235 227 237 225 234 214 233 224 235 225 261 225 242 227 233 282 366 320 671 795 764 865 1434
)
lt_nat =: ".;._2 ]0 : 0
24 21 23 22 24 21 23 24 24 42 29 35 30 48 37 136 249 99 497 527 574 669 792 908 1233 1906
32 32 32 32 33 34 37 37 35 40 36 52 46 68 58 177 281 126 494 533 576 670 789 925 1148 1891
113 93 73 72 74 73 74 76 74 79 76 89 84 102 94 192 287 164 495 520 576 734 940 955 1150 1752
235 233 259 233 233 234 234 235 233 239 235 245 237 250 239 306 473 289 714 681 730 824 942 1097 1327 2009
)
and_nat =: 29 26 27 27 28 34 23 24 27 26 24 33 32 43 35 136 249 91 461 486 512 646 863 849 1130 1813 
 ne_nat =: 29 26 27 26 23 21 23 24 23 26 24 36 30 47 35 138 312 93 463 484 534 649 866 854 1097 1890 
