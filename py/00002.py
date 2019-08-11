#2. Even Fibonacci numbers

def fib (x):
    return x + [ x[-2] + x[-1] ]

s = [1, 1]

while s[-1] < 4e6:
    s = fib ( s )

print sum ( filter ( lambda x: x % 2 == 0, s ) )
#4613732
