// 36.  Double-base palindromes

/for pal
\l util.q

/base 10 palindromes (decimals)
dec:(1 + til 1000000) where pal each 1 + til 1000000;
/ based 2 palindrome subset of this
sum dec where pal each {{first[where x]_x}0b vs x} each dec
/872187