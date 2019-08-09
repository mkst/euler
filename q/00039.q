//39. Integer right triangles

f:{ asc distinct asc each (x-sum each rr),'rr:raze r,/:'r + til each x-2*r:1_til x div 2};
first i where res = max res:{ sum { (z*z)=(x*x)+(y*y) }.'f x } peach i:120 * 1 + til 8
/ 840
