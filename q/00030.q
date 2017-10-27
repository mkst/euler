// 30. Digit fifth powers

/for digits
\l util.q

sum 1_1+where (1+til 1000000)=sum each xexp[;5] digits 1 + til 1000000
/443839