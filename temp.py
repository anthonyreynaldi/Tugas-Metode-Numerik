import math

xi = 3.5684
yi = 1.8073

x = math.sqrt((5 - (yi - 4)**2 + 8*xi -16))
y = math.sqrt(16 - x**2)

print("x = ", x)
print("y = ", y)