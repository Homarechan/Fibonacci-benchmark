fibonacci = (x) -> ccall((:fibonacci, "./libfibonacci.so"), Int64,(Int64,), x)

println(fibonacci(40))
