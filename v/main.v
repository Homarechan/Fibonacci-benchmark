fn fibonacci(n int) int {
    if n == 1 || n == 2 {
        return 1
    }
    return fibonacci(n-1) + fibonacci(n-2)
}

fn main() {
    println(fibonacci(40))
}