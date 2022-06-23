#Anthony Reynaldi - C14200078
#Jeremy Dionn     - C14200206
#Wendy Santoso    - C14200036

# (x ? 4)^2+ (y ? 4)^2 = 5
# (x^2-8*x+16) + (y^2-8*y+16) - 5 = 0

# x^2 + y^2 - 16 = 0

import numpy as np

def generate_j1(x, y):
  r = [2*x-8, 2*y-8]
  return r
def generate_j2(x, y):
  r = [2*x, 2*y]
  return r

def generate_f1(x, y):
  r = (x-4)**2 + (y-4)**2 - 5
  return r
def generate_f2(x, y):
  r = x**2 + y**2 - 16
  return r

def newton_raphson(x, y):
  es = 10**-4
  iter = 0
  maxiter = 50
  
  #initialize
  hasil = [[x], [y]]

  while(1):
    #generate matrix J and f
    J = [generate_j1(hasil[0][0], hasil[1][0]), generate_j2(hasil[0][0], hasil[1][0])]
    f = [[generate_f1(hasil[0][0], hasil[1][0])], [generate_f2(hasil[0][0], hasil[1][0])]]
    
    d = np.matmul(np.linalg.inv(J), f)
    hasil = np.subtract(hasil, d)
    
    iter = iter + 1
    
    #count error approx
    ea = 100*max(abs(np.divide(d, hasil)))
    
    #check error stop
    if(ea <= es or iter >= maxiter):
      break
  
  result = [hasil[0][0], hasil[1][0]]
  return result

#TITIK 1
print("Titik 1")
print(newton_raphson(1.8, 3.5))

#TITIK 2
print("Titik 2")
print(newton_raphson(3.5, 1.8))