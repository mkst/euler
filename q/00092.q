// 92. Square digit chains

sum {{ $[-1h=type x;x;$[1=x;0b;$[89=x;1b;sum{x*x}"J"$string string x]]]}/[x]} each 1 + til 10000000
/8581146