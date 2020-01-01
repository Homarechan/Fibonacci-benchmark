import ctypes

print(ctypes.CDLL("./fibonacci.so").fibonacci(40))
