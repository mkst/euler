// 37. Truncatable primes

/for pun
\l util.q

sum 4_primes where{all in["J"$(neg[a],a:-1_1 + til count s)#\:s:string x;y]}[;primes] peach primes:pun 1000000
/748317