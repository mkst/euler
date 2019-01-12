// 27. Quadratic primes

\l util.q

ab:(p,neg p) cross p:pun 1000
primes:pun 11000

f:{ n:1;while[in[(n*n)+(n*x)+y;primes];n+:1];:n }

prd first ab where r=max r:f .'ab
/-59231
