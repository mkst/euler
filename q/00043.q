/ 43. Sub-string divisibility

/for win
\l util.q

/ pan digital combinations
pd:{raze y,/:'x except/:y}[ix;]/[-1+count ix;ix:raze string til 10];
/ exclude ones that start with 0
pds:pd where not pd like "0*";
/ drop first
res:{all not mod["J"$win[3;x];2 3 5 7 11 13 17]} peach 1_'pds;
/ sum up
sum "J"$pds where res
/ 16695334890