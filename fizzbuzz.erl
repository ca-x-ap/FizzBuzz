-module(fizzbuzz).
-export(main/1).


main([Count]) ->
  fizzbuzz(1, list_to_integer(Count)).

fizzbuzz(N, Count) when N =< Count ->
  Fizz = N rem 3 === 0,
  Buzz = N rem 5 === 0,
  Out =
    case { Fizz, Buzz } of
      { false, false } -> integer_to_list(N);
      { true, false } -> "fizz";
      { false, true } -> "buzz";
      { true, true } -> "fizzbuzz"
    end,
  ok = io:format("~s~n", [Out]),
  fizzbuzz(N + 1, Count);
fizzbuzz(_, _) -> ok.