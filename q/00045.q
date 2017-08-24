// 45. Triangular, pentagonal, and hexagonal

/Tn=n(n+1)/2
tri:{div[x*x+1;2]}
/Pn=n(3n−1)/2
pen:{div[x*(3*x)-1;2]}
/Hn=n(2n−1)
hex:{x*(2*x)-1}
/generate 1..100k
t:1 + til 100000;
/intersection
last hex[t] inter pen[t] inter tri[t]
/1533776805