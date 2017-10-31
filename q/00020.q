// 20. Factorial digit sum

/ load util for digits
\l util.q

pad:{((max[c]-c:count each x)#'0),'x}

prod:{[x;y] res:reverse Add reverse flip pad {[x;y;z] (raze "J"$string string y[z]*x),z#0 }[(),y;reverse (),x] each til count x;$[carry;carry,res;res] }

Prod:{[x;y]
  r:prod[digits x;] each reverse digits y;
  if[1=count r; / return now
    :(raze/)r
    ];
  carry::0; / reset carry
  r:reverse Add reverse flip pad r,'(til count digits y)#'0;
  $[carry;carry,r;r]
  }

carry:0;
add:{
  r:carry+sum x;
  carry::r div 10;
  r mod 10
  };

Add:{
  r:add each x;
  if[carry;
    r:r,carry;
    carry::0 / reset carry
    ];
  r
  };

sum (Prod/)"J"$string string 1 + til 100
/648