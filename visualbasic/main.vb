Imports System

Module program
    Sub Main()
        Console.WriteLine("{0}", Fibonacci(40))
    End Sub

    Public Function Fibonacci(ByVal n As Integer) As Integer
        If (n=1) or (n=2)
            Return 1
        End If
        Return Fibonacci(n-1) + Fibonacci(n-2)
    End Function
End Module
