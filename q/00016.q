// 16. Power digit sum

/ carry bit, 0 or 1
carry:0;

/sub function to double a single-digit number and update carry
double:{
  carry::$[9<x:carry+2*x;1;0];
  x mod 10
  };

/main function to run across list of integers
Double:{
  a:double each reverse (),x;
  if[carry;
    a,:carry;
    carry::0;
    ];
  reverse a
  };

/double 1 1000 times (aka 2^1000)
sum Double/[1000;1]
/1366