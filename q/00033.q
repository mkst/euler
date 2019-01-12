// 33. Digit cancelling fractions

/ filter available fractions
c@:where { (3=count distinct r)&(4=count raze distinct each s)&not "0" in r:raze s:string x,y }.'c:{x cross x}10 + til 90
/ 4 distinct fractions
d:distinct asc each c where {((%). value each (x;y))=(%)."J"$(x;y)except\:x where x in y} .' string c
/ determine denominator
1%(prd d[;0]) % prd d[;1]
