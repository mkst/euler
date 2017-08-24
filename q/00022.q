// 22. Names scores

/ read in names.txt
names:first read0 `:../resources/p022_names.txt;
/remove quotes, split on comma, sort ascending
names:asc "," vs names except "\""
/calc values and sum
sum names{y*sum("j"$x)-64}'1+til count names
/871198282