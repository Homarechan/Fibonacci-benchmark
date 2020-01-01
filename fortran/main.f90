program main
    print *, fib(40)
contains
    recursive function fib(n) result(ret)
        if (n == 1 .or. n == 2) then
            ret = 1
        else
            ret = fib(n-1) + fib(n-2)
        end if
    end function
end program
