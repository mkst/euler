//32. Pandigital products

/ empty result array
res:();
/ find combinations where x,y,x*y match "123456789"
{{if["123456789"~asc raze string (x,y,x*y);res,::x,y]}[x] each til 100} each til 10000;
/ sum up distinct products
sum distinct { x[0]*x[1] } each  2 cut res
/45228
