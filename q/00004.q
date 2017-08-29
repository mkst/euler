//4. Largest palindrome product

/ for pal(indrome)
\l util.q

/evaluate first 1000 numbers
first desc P where pal each P:distinct raze {x*/:x}til 1000
/906609