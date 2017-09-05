//12. Highly divisible triangular number

/ for nf, tri
\l util.q

/find tri[x] where nf[tri[x]] > 500
res:{{$[x<nf tri[y];y;y+1]}[x]/[y]}[500;1];
/value of triangle number
tri res
/76576500