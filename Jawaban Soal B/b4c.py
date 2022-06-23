#Anthony Reynaldi - C14200078
#Jeremy Dionn     - C14200206
#Wendy Santoso    - C14200036

import numpy as np

def generate_j1(x, y):
  r = [-2*x + 1, -1]
  return r
def generate_j2(x, y):
  r = [2*x - 5*y, -5*x - 1]
  return r

def generate_f1(x, y):
  r = -x**2 + x - y + 0.75
  return r
def generate_f2(x, y):
  r = x**2 - y - 5*x*y
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
print("Hasil dengan Initial Value (1.2, 1.2)) =")
print(newton_raphson(1.2, 1.2))