-module(function).
-export([greet/2, area/2, right_age/1, help_me/1, prepend/2]).

greet(male, Name) ->
  io:format("Hello, Mr. ~s.~n", [Name]);
greet(female, Name) ->
  io:format("Hello, Ms. ~s.~n", [Name]);
greet(_, Name) ->
  io:format("Hello, ~s.~n", [Name]).

area(square, Len) ->
  Len * Len;
area(circle, Len) ->
  Len * Len * 3.14;
area(Type, _) ->
  io:format("~p is not supported.~n", [Type]).

right_age(X) when (X >= 16) or (X =< 20) and X rem 2 =:= 0 ->
  true;
right_age(_) ->
  false.

help_me(Animal) ->
  TS = [{cat, "meow"}, {beef, "mooo"}, {dog, "bark"}, {tree, "bark"}],
  case lists:keyfind(Animal, 1, TS) of
    false -> say(Animal, "fgdadfgna");
    T -> say(Animal, element(2, T))
  end.

say(Animal, Talk) ->
  {Animal, "says " ++ Talk ++ "!"}.

prepend(X, []) ->
  [X];
prepend(X, Set) ->
  case lists:member(X, Set) of
    true  -> Set;
    false -> [X|Set]
  end.
