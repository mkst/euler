//49. Prime permutations

\l util.q

/ primes betwen 1000 and 10000
p@:where 1000<p:pun 10000;

c:p g where 2<count each g:group a:asc each string p

(c w),'r w:where count each r:{ distinct raze { x where (2*x)in x } each abs x-x except/: x } each c

// needs human intervention

/296962999629
