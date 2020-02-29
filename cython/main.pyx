cdef fibonacci(int n):
    if n == 1 or n == 2:
        return 1
    return fibonacci(n-1) + fibonacci(n-2)

def print_fibonacci():
    print(fibonacci(40))

