/ load util.q for digits

\l util.q

/ match lengths, add leading zero
zeropad:{(((1+max[c]-c:count each x)#'0),'x)}

CARRY:0;
PRECISION:2000; / 2000 decimals

Add:{ (sum mins 0=r)_r:reverse { $[any x>9;((x mod 10),0)+(0,d:x div 10);x] }/[ sum reverse each zeropad x ] }

prod:{
  Add { (raze digits y[z]*x),z#0 }[y;reverse x] peach til count x
  };
Prod:{
  r:prod[digits x;] peach reverse d:digits y; / multiply x by each y
  if[1=count r;:(raze/)r];                    / single digit y, raze to return list
  Add r,'(til count d)#'0                     / add products together
  };

divide:{
  r:x+10*CARRY;
  CARRY::r mod y;
  r div y
  };
Divide:{
  CARRY::0;                                 / reset CARRY
  x: x,(PRECISION-count x:digits x)#'0;
  r: divide[;y] each x
  };

pat:{[x]
  x:reverse (first where not 0=reverse x)_reverse x; / strip trailing zeros
  if[count[x]<.5*PRECISION;:0];                      / no cycle (fraction)
  if[all(-5#x)=/:last x;:0];                         / no cycle (recurring number)
  0^1+first where { (raze 2#enlist y#x)~(2*y)#x}[1_x;] each 2 + til PRECISION div 2 / assume max PRECISION/2 length cycle
  };
