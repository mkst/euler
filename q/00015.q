// 15. Lattice paths

/bruteforce search (takes hours/days)
/{sum { sum x = sum each 0b vs'floor y + til ceiling 2 xexp x}[x;] peach (2 xexp x) * til floor 2 xexp x } 20

/This is OEIS A000984
/The equation is (2x20)!/(20!^2)

/top is (2*20)! = 40!
top:prd "f"$1 + til 40
/bottom is (20!)^2
bottom:{x*x} prd "f"$1 + til 20
/ divide top by bottom and cast to long
"j"$top%bottom
/137846528820
