// 145. How many reversible numbers are there below one-billion?

b:r:0
bs:1000000
/ 1000 batches of 1 million => 1 billion, takes ~10 minutes to run
while[b<1000000000;
  / create batch, ignore tens
  batch:b + raze (til[100000]*10)+\:1+til 9;
  r+:sum not max flip"02468"in/:string sum flip batch,'"J"$reverse each string batch;
  / offset next batch
  b+:bs
  ];
r
/608720
