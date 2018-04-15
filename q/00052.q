// 52. Permuted multiples

/define multiple function
f:{[N;x] x where {[N;x] all(string x*N)in string x}[N] each x};
/ chain
first f[6;] f[5;] f[4;] f[3;] f[2;] 1 + til 1000000
/142857
