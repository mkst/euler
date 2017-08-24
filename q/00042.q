// 42. Coded triangle numbers

/calculate first 20 triangle numbers
tri:sums 1 + til 20;
/read in words
words:first read0 `:../resources/p042_words.txt;
/strip quotes and split on commas
words:"," vs words except "\"";
/A->1 and sum
words:sum each ("j"$words)-64;
/count intersection
count (raze words) inter tri
/162