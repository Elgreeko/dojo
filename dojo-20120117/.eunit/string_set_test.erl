-module(string_set_test).
-include_lib("eunit/include/eunit.hrl").

% demo_test() ->
%   13 = solution:demo().

new_test() ->
  [] = string_set:new().

add_test() ->
  ["yamate"] = string_set:add(string_set:new(), "yamate").

add_two_elements_test() ->
  Devs = string_set:add(string_set:new(), "yamate"),
  Devs2 = string_set:add(Devs, "flores"),
  true = string_set:member(Devs2, "yamate"),
  true = string_set:member(Devs2, "flores").

add_two_duplicate_test() ->
  Devs = string_set:add(string_set:new(), "yamate"),
  ["yamate"] = string_set:add(Devs, "yamate").

delete_element_test() ->
  Devs = string_set:add(string_set:new(), "yamate"),
  [] = string_set:delete(Devs, "yamate").

delete_non_existent_test() ->
  Devs = string_set:add(string_set:new(), "yamate"),
  ["yamate"] = string_set:delete(Devs, "flores").

delete_non_existent_on_empty_set_test() ->
  [] = string_set:delete(string_set:new(), "flores").

member_existent_element_test() ->
  Devs = string_set:add(string_set:new(), "yamate"),
  true = string_set:member(Devs, "yamate").

member_non_existent_element_test() ->
  Devs = string_set:add(string_set:new(), "yamate"),
  false = string_set:member(Devs, "flores").

disjoint_union_test() ->
  Devs1 = string_set:add(string_set:new(), "yamate"),
  Devs2 = string_set:add(string_set:new(), "george"),
  Devs = string_set:union(Devs1, Devs2),
  true = string_set:member(Devs, "yamate"),
  true = string_set:member(Devs, "george").

non_disjoint_union_test() ->
  Devs1 = string_set:add(string_set:new(), "yamate"),
  Devs2 = string_set:add(string_set:new(), "yamate"),
  ["yamate"] = string_set:union(Devs1, Devs2).

intersect_test() ->
  Devs1 = ["yamate", "george"],
  Devs2 = ["flores", "george"],
  ["george"] = string_set:intersect(Devs1, Devs2).