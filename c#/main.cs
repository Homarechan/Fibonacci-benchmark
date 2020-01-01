using System;

class MainCls {
    public static void Main() {
        Console.WriteLine("{0}", fibonacci(40));
    }

    private static int fibonacci(int n) {
        if (n == 1 || n == 2) {
            return 1;
        }
        return fibonacci(n-1) + fibonacci(n-2);
    }
}
