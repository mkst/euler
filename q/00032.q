//32. Pandigital products

/ find combinations where x,y,x*y match "123456789"
sum distinct prd flip raze (til 10000){$["123456789"~asc raze string (x,y,x*y);x,y;0 0]}/:\:til 100
/45228