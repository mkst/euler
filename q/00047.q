//47. Distinct primes factors

\l util.q

/count distinct prime factors
cdpf:{
  // super-fast exit if x is prime
  if[x in y;:1];
  // otherwise...
  count distinct first {
    // fast exit if prime factor
    if[x[2] in y;
      :(x[0],x[2];x[1];1)
      ];
    // otherwise...
    $[1=x[2];
      x;
      0=x[2]mod p:y x[1];
        (x[0],p;x[1]  ;x[2]div p);
        (x[0]  ;x[1]+1;x[2])
    ]
  }[;y]/[(();0;x)]
 }[;`u#pun 200000];

1+first where 4=sum each win[4;] 3 < cdpf peach 1 + til 200000
/134043
