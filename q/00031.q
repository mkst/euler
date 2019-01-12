// 31. Coin sums

available:1 2 5 10 20 50 100 200

f:{[start;coins]
  if[200=sum coins;
    :enlist coins
    ];
  c:available where available <= min coins;
  raze .z.s'[s w;coins,/:c w:where 0<=s:start-c]
 }

count f[200;`long$()]
/73682
