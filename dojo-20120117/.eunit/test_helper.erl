-module(test_helper).
-export([test/0]).

test() ->
  eunit:test([
    string_set_test
  ]).