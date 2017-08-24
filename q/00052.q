// 52. Permuted multiples

/define multiple function
f:{[N;x] x where {[N;x] all(string x*N)in string x}[N] each x};
/define t as 1..1000000
t:1 + til 1000000;
/ perform intersection (reassign t for slight speedup)
f[2;t] inter t:f[3;t] inter t:f[4;t] inter t:f[5;t] inter t:f[6;t]
/142857