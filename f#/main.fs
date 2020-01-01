open System

let rec fibonacci n =
    match n with
    | 1 | 2 -> 1
    | n -> fibonacci (n-1) + fibonacci (n-2)

Console.WriteLine("{0}",fibonacci(40))
