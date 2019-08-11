#12. Highly divisible triangular number

import math

def nf (x):
    s = math.sqrt ( x )
    f = math.floor ( s )
    return (-1 if s == f else 0) + 2 * sum ( map ( lambda xx: 0 == x % (xx + 1), range ( int ( f ) ) ) )

def tri (x):
    return ( x * ( x + 1 ) ) // 2

i = 0
while nf ( tri ( i ) ) < 500:
    i = i + 1

print tri ( i )
#76576500
