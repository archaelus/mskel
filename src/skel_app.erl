-module(skel_app).

-behaviour(application).

%% Application callbacks
-export([start/0, start/2, stop/1]).

-export([config/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start() ->
    application:start(skel).

start(_StartType, _StartArgs) ->
    skel_sup:start_link().

stop(_State) ->
    ok.

config(Key) ->
    case application:get_env(Key) of
        {ok, Val} -> Val;
        _ -> erlang:error({missing_configuration, Key})
    end.
