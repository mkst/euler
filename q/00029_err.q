// 29. Distinct powers

count { distinct asc raze { {x xexp y}[y]each 2+til x }[x-1;] each 2+til x-1 } 100

/ returns 9240 which is not accepted as an answer, works fine for x=5