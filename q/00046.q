//46. Goldbach's other conjecture

\l util.q

p:`u#pun 10000;
s:{2*x*x} 1 + til 100;

(2+)/[{$[x in p;1b;x in raze (p where p < x)+\:/:s where s < x] };3]
/5777
