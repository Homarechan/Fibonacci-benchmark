defmodule Fibonacci do
    def fibonacci(1), do: 1
    def fibonacci(2), do: 1
    def fibonacci(n), do: fibonacci(n - 1) + fibonacci(n - 2)

    def main, do: IO.puts "#{Fibonacci.fibonacci(40)}"
end 
