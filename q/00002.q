//2. Even Fibonacci numbers

/fibonacci numbers below 4 million
fibs:{{[MAX;x]n:sum -2#x;$[n<MAX;x,n;x]}[x]/[0 1]} 4e6;
/even fibonacci numbers
sum fibs where 0=fibs mod 2
/4613732