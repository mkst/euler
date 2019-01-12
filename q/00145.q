// 145. How many reversible numbers are there below one-billion?

f:{ $[mod[x;10];not max "02468" in string sum x,"J"$reverse string x;0b] }

b:r:0
batch:1000000
/ 1000 batches of 1 million => 1 billion
while[b<1000000000;
  r+:sum f peach b + til batch;
  b+:batch
  ];
r
/608720
