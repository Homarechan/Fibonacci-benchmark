object Main {
    def main(args: Array[String]): Unit = {
        printf("%d\n", fibonacci(40))
    }

    def fibonacci(n: Int): Int = {
        if (n == 1 || n == 2) {
            return 1
        }
        fibonacci(n-1) + fibonacci(n-2)
    }
}
