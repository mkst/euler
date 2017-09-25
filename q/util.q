/is input a palindrome
pal:{(reverse neg[c]#s)~(c:div[count s;2])#s:string x};
/returns all primes under n
pun:{last {$[count F:first x;(F where not 0=mod[F;first F];last[x],first F);x]}/[(2+til x-2;())]};
/xor function
xor:{0b sv(0b vs x)<>0b vs y};
/break number into digits
digits:{("j"$string x)-48};
/greatest common denominator (helper)
gcd_helper:{$[0=m:mod[x;y];y;.z.s[y;m]]};
/greatest common denominator (wrapper)
gcd:{$[any 0=(x;y);x|y;gcd_helper[x|y;x&y]]};
/lowest common multiple
lcm:{div[x*y;gcd[x;y]]};
/number of factors
nf:{$[s=f;-1;0]+2*sum 0=mod[x;1+til f:floor s:sqrt x]};
/distinct factors
df:{asc distinct div[x;b],b:a where 0=mod[x;a:1+til floor sqrt x]};
/triangle number (n(n+1)/2)
tri:{div[x*x+1;2]};
/pentagonal number (n(3n−1)/2)
pen:{div[x*(3*x)-1;2]};
/hexagonal number (n(2n−1))
hex:{x*(2*x)-1};