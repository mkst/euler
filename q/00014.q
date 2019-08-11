// 14. Longest Collatz sequence

/count of chain lengths, takes ~ 6 minutes
res:{count {$[1=L:last x;x;$[0=mod[L;2];x,div[L;2];x,1+3*L]]}/[x]} peach 1 + til 1000000;
first 1+where res=max res
/837799
