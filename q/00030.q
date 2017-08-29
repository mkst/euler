// 30. Digit fifth powers

/for digits
\l util.q

sum 1_ 1+where {[POW;x]x=sum xexp[;POW] digits x}[5] each 1 + til 1000000
/443839