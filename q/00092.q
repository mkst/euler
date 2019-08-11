// 92. Square digit chains

/for digits
\l util.q

// takes ~ 3 minutes
sum {{ $[-1h=type x;x;$[1=x;0b;$[89=x;1b;sum{x*x}digits x]]]}/[x]} peach 1 + til 10000000
/8581146
