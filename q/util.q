/is input a palindrome
pal:{(reverse neg[c]#s)~(c:div[count s;2])#s:string x};
/returns all primes under n
pun:{last {$[count F:first x;(F where not 0=mod[F;first F];(L:last x),first F);x]}/[(2+til x-2;())]};
/xor function
xor:{0b sv(0b vs x)<>0b vs y};
/break number into digits
digits:{("j"$string x)-48};
