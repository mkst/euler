//2. Even Fibonacci numbers

/fibonacci numbers below MAX
fib:{[MAX]{x,sum -2#x}/[{[MAX;x]MAX>sum -2#x}[MAX;];0 1]}
/fibonacci numbers below 4 million
f: fib 4e6;
/even fibonacci numbers
sum f where 0=f mod 2
/4613732