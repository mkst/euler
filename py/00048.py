#48. Self powers

print ( str ( ( reduce ( lambda x,y: x + y**y, range ( 1000 ) ) ) )[-10:] )
#9110846700
