//47. Distinct primes factors

\l util.q

p:`u#pun 200000

/count distinct prime factors
cdpf:{
  // super-fast exit
  if[x in p;:1];
  // otherwise...
  count distinct first {
    // fast exit
    if[x[2] in p;
      :(first[x],x[2];x[1];1)
      ];
    // otherwise...
    $[1=x[2];
      x;
      0=x[2]mod 2;
        (first[x],2;3;x[2] div 2);
        0=x[2]mod x[1];
          (first[x],x[1];x[1]  ;x[2]div x[1]);
          (first[x]     ;x[1]+2;x[2])
    ]
  }/[(();3;x)]
 };

1+first where 4=sum each win[4;] 3 < cdpf peach 1 + til 200000
/134043
