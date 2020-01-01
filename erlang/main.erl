-module(main).
-export([do_main/0]).

fibonacci(0) -> 1;
fibonacci(1) -> 1;
fibonacci(N) -> fibonacci(N-1) + fibonacci(N-2).

do_main() -> io:format("~p\n", fibonacci(40)).


