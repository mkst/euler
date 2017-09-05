/is input a palindrome
pal:{(reverse neg[c]#s)~(c:div[count s;2])#s:string x};
/returns all primes under n
pun:{last {$[count F:first x;(F where not 0=mod[F;first F];(L:last x),first F);x]}/[(2+til x-2;())]};
/xor function
xor:{0b sv(0b vs x)<>0b vs y};
/break number into digits
digits:{("j"$string x)-48};
/greatest common denominator
gcd:{{$[0=m:mod[x;y];y;.z.s[y;m]]}.$[x>y;(x;y);(y;x)]};
/lowest common multiple
lcm:{div[x*y;gcd[x;y]]};
/number of factors
nf:{$[s=f;-1;0]+2*sum 0=mod[x;1+til f:floor s:sqrt x]};
/distinct factors
df:{asc distinct div[x;b],b:a where 0=mod[x;a:1+til floor sqrt x]};
/triangle number
tri:{div[x*x+1;2]};