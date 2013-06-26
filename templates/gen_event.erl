-module({{name}}).
-behavior(gen_event).

%%% Callback Exports
-export([init/1,
		handle_event/2,
		handle_call/2,
		handle_info/2,
		terminate/2,
		code_change/3]).


%%% API Exports
-export([start_link/0]).

start_link/0 ->
	{ok, Pid} = gen_event:start_link(),
	Pid.

init(_Args) ->
	{ok, State}.

handle_event(_Event, State) ->
	{ok, State}.

handle_call(Request, State) ->
	Reply = Request,
	{ok, Reply, State}.

handle_info(_Info, State) ->
	{ok, State}.

terminate(_Arg, State) ->
	ok.

code_change(_OldVsn, State, _Extra) ->
	{ok, State}.
