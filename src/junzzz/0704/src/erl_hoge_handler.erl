-module(erl_hoge_handler).
-export([init/2]).

init(Req, Opts) ->
  Req2 = cowboy_req:reply(200, [
    {<<"content-type">>, <<"application/json">>}
  ], <<"{\"message\": \"hell world\"}">>, Req),
  {ok, Req2, Opts}.
