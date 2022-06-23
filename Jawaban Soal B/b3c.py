# Anthony Reynaldi - C14200078
# Jeremy Dionn     - C14200206
# Wendy Santoso    - C14200036

import math


def f1(x, y, type):
    if (type == 1):
        r = y + x ** 2 - 0.75
    elif (type == 2):
        r = math.sqrt(x - y + 0.75)

    return r


def f2(x, y, type):
    if (type == 1):
        r = x ** 2 - 5 * x * y
    elif (type == 2):
        r = (x ** 2 - y) / 5 * x

    return r


def gauss_seidel(x, y, type1, type2):  # initial value
    es = 10 ** -4
    iter = 0
    maxiter = 50

    while (1):
        iter = iter + 1

        # save the old value
        xold = x
        yold = y
        lamda = 0.5

        # determine new value of x and y
        x = f1(x, y, type1)
        x = lamda * x + (1 - lamda) * xold  # relaxed

        y = f2(x, y, type2)
        y = lamda * y + (1 - lamda) * yold  # relaxed

        # count error approx
        ea = [-1, -1]
        if (x != 0):
            ea[0] = (abs(x - xold) / x) * 100

        if (y != 0):
            ea[1] = (abs(y - yold) / y) * 100

        # check error stop
        if (max(ea) <= es or iter >= maxiter):
            break

    result = [x, y]

    return result


# titik 1
print("Titik 1 (1.2, 1.2), Lamda = 0.5")
print(gauss_seidel(1.2, 1.2, 2, 2))