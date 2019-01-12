// 23. Non-abundant sums

/maximum
M:28123
/factors function (from #21)
d:{sum 1 + where not mod[x;a:1+til div[x;2]]};
/abundant numbers from 1 to 28123 inclusive
abd:1 + where {d[x]>x} each 1 + til M;
/distinct values
dis:distinct raze{x+/:x}abd;
/sum of numbers under 28123 except abundant
sum (1+til M) except dis
/4179871
