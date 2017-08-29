// 145. How many reversible numbers are there below one-billion?

/for digits
\l util.q

/ this will wsfull on 32bit version, TODO: 100 batches of 10 million
$["64"~string[.z.o]1 2;
  sum { $[0=x mod 10;0b;all 1=mod[digits x+"J"$reverse string x;2]] } each til 1000000000;
  "32bit detected, skipping solution..."
  ]
/608720