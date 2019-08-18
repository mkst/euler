//50. Consecutive prime sum

\l util.q

f:{ last where sums[x _ y] in y }[;p:`u#pun 1000000]

/minimum 21 terms that add up to 1 million
res:f each til 10 /peach til count p where p < 100000

last s where in[s:sums (first where res=max res) _ p;p]
/997651
