-module(test_helper).
-export([test/0]).

test() ->
  eunit:test([
    solution_test
  ]).