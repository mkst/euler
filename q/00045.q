// 45. Triangular, pentagonal, and hexagonal

/for tri, pen, hex
\l util.q

/generate 1..100k
t:1 + til 100000;
/intersection
last hex[t] inter pen[t] inter tri[t]
/1533776805