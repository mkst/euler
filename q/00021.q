/ 21. Amicable numbers

/define function
d:{sum a where 0=mod[x;a:1+til div[x;2]]};
/apply function 0..10000
sum w where { (a<>x)&x=d[a:d[x]] } each w:til 10000
/31626