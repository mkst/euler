// 25. 1000-digit Fibonacci number

\l big.q

/ calculate fibonaci numbers, stop when length of number is 1000
count { x,enlist Add -2#x }/[{count[last x]<1000};(enlist 1;enlist 1)]
/4782