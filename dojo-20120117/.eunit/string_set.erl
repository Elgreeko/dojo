-module(string_set).
% -export([demo/0]).
-export([new/0, add/2, delete/2, member/2, union/2, intersect/2]).

new() -> [].

add([Head | _] = Set, Head) -> Set;
add([Head | Tail], Item) -> [Head | add(Tail, Item)];
add([], Item) -> [Item].

delete([Head | Tail], Head) -> Tail;
delete([Head | Tail], Item) -> [Head | delete(Tail, Item)];
delete([], _) -> [].

member([Head | _], Head) -> true;
member([_ | Tail], Item) -> member(Tail, Item);
member([], _) -> false.

union(Set, [Head|Tail]) ->
  union(add(Set, Head), Tail);

union(Set, []) ->
  Set.

intersect(Set1, Set2) ->
  intersect_acc(Set1, Set2, []).

intersect_acc(Set, [Head | Tail], Acc) ->
  case member(Set, Head) of
    true ->
      [Head | Acc];
    false ->
      intersect_acc(Set, Tail, Acc)
  end;

intersect_acc(_, [], Acc) ->
  Acc;

intersect_acc([], _, Acc) ->
  Acc.