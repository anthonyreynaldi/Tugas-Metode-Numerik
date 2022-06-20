#Anthony Reynaldi - C14200078
#Jeremy Dionn     - C14200206
#Wendy Santoso    - C14200036

import math

def f1(x,y):
  #r = sqrt( 5 - (y - 4)**2 )
  r = (5 - (y - 4)**2 - 16 - x**2) / -8
  return r


def f2(x,y):
  r = math.sqrt(16 - x**2)
  return r


def gauss_seidel(x, y): #initial value
  es = 10**-4
  iter = 0
  maxiter = 10000000

  while(1):
    iter = iter +1
    
    #save the old value
    xold = x
    yold = y
    
    #determine new value of x and y
    x = f1(x, y)
    y = f2(x, y)

    # print("x = ", x)
    # print("y = ", y)
    
    #count error approx
    ea = [-1, -1]
    if (x != 0):
      ea[0] = (abs(x - xold) / x) * 100
    
    
    if (y != 0):
      ea[1] = (abs(y - yold) / y) * 100
    
    
    #check error stop
    if(max(ea) <= es or iter >= maxiter):
      break
  
  result = [x, y]

  return result
  

#titik 1
print("Titik 1 (1.8, 3.6)")
print(gauss_seidel(1.8, 3.5))

#titik 2
print("Titik 2 (3.6, 1.8)")
print(gauss_seidel(3.5, 1.8))

