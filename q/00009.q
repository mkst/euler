// 9. Special Pythagorean triplet

/find a and b
ab:1+where {any raze{1000=x+y+sqrt(x*x)+y*y}[x] each 1+ til 1000} each 1+til 1000;
/product abc
prd ab,(-/)1000,ab
/31875000