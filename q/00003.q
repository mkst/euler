//3. Largest prime factor

1_{{$[1=L:last x;x;$[(res:L div F)=L%F:first x;2,(1_x),res;(1+F),1_x]]}/[2,x]} 600851475143
/6857