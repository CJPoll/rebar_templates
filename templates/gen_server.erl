-module({{name}}).
-behavior(gen_server).

%%% Callback Exports
-export([init/1, 
		handle_call/3,
		handle_cast/2,
		terminate/2,
		handle_info/2,
		code_change/3]).

%%% API Exports
-export([start_link/1]).

-define(PRINT(String, Args), io:format(String, Args)).

init([]) ->
	State = statedata,
	{ok, State}.

handle_call(Request, _From, State) ->
	Reply = somereply,
	{reply, Reply, State}.

handle_cast(_Request, State) ->
	{noreply, State}.

handle_info(Info, State) ->
	?PRINT("Info: ~p~n", [Info]),
	{noreply, State}.

terminate(Reason, State) ->
	?PRINT("gen_server failed for reason: ~p in state: ~p~n", [Reason, State]).

code_change(_OldVsn, State, _Extra) ->
	{ok, State}.
