// 35. Circular primes

/ for pun and digits
\l util.q

primes:pun 1000000
sum { all { ("J"$raze string y rotate x) in primes}[d;]each 1 + til count d:digits x }peach primes
/55