from rpython.translator.interactive import Translation
from ctypes import CDLL

def fibonacci(n):
    if n == 1 or n == 2:
        return 1
    return fibonacci(n - 1) + fibonacci(n - 2)

t = Translation(fibonacci, [int])
t.annotate()
t.rtype()
lib = t.compile_c()

