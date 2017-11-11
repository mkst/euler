// 28. Number spiral diagonals

a:0;
sum raze { a+:2; last[x]+ a+a*til 4 }\[{last x < 1001*1001};1]
/669171001