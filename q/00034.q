// 34. Digit factorials

\l util.q

sum 2 _ 1 + where { x=sum prd each 1 + til each digits x } each 1 + til 100000
/40730