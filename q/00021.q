/ 21. Amicable numbers

/define function
d:{sum 1 + where not mod[x;1+til div[x;2]]};
/apply function 0..10000
sum where { (not a=x)&x=d[a:d[x]] } each til 10000
/31626
