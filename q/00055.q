//55. Lychrel numbers

\l big.q

f:{
    {
    if[1=count x;:x];
    if[50<a:first x;:0b];
    b:last x;
    c:Add (reverse b;b);
    if[reverse[c]~c;:1b];
    (a+1;c)
    }/[(1;x)]
  };

count where not f peach digits til 10000
/249
