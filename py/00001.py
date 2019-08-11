#1. Multiples of 3 and 5

print reduce ( lambda x, y: x + y if ( y % 3 == 0) or ( y % 5 == 0 ) else x, range ( 1000 ) )
