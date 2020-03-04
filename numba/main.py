from numba import njit
from time import time

@njit
def fibonacci(n: int):
    if n == 1 or n == 2:
        return 1
    return fibonacci(n - 1) + fibonacci(n - 2)

fibonacci(1) # Compile the function
    
s1 = time()
print(fibonacci(40))
print(time() - s1)
