//3. Largest prime factor

/largest prime factor
lpf:{last{$[0=mod[last x;first x];2,div[last x;first x];(1+first x;last x)]}/[{1<>div[first x;last x]};2,x]};
/ calculate for 600851475143
lpf 600851475143
/6857