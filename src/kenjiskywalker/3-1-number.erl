-module(number).
-export([plus/2, minus/2, times/2, devided/2, main/1]).

plus(N, M) ->
    N + M.

minus(N, M) ->
    N - M.

times(N, M) ->
    N * M.

devided(N, M) ->
    N / M.

main(_) ->
    N = 1,
    M = 10,

    PlusResult = plus(N, M),
    io:format("~w~n",[PlusResult]),

    MinusResult = minus(N, M),
    io:format("~w~n",[MinusResult]),

    TimesResult = times(N, M),
    io:format("~w~n",[TimesResult]),

    DevidedResult = devided(N, M),
    io:format("~w~n",[DevidedResult]).

