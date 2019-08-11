// 36.  Double-base palindromes

/for pal
\l util.q

/base 10 palindromes (decimals)
dec:1 + where pal peach 1 + til 1000000;
/ based 2 palindrome subset of this
sum dec where pal peach 2 vs' dec
/872187
