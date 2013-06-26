-module({{name}}).
-behavior(gen_fsm).

%%% Callback Exports
-export([init/1,
		handle_event/3,
		handle_sync_event/4,
		handle_info/3,
		terminate/3,
		code_change/4]).

%%% State Exports
-export([{{state1}}/2]).

-define(PRINT(FString, Args), io:format(FString, Args)).

init(Arg) ->
	{ok, {{state1}}, StateData}.

{{state1}}(_Event, StateData) ->
	{next_state, {{state1}}, StateData}.

handle_event(_Event, StateName, StateData) ->
	{next_state, {{state1}}, StateData}.

handle_sync_event(Event, From, StateName, StateData) ->
	% The reply can be whatever; this is just to avoid compiler warnings.
	Reply = Event,
	{reply, Reply, {{state1}}, StateData}.

handle_info(_Info, StateName, StateData) ->
	{next_state, {{state1}}, StateData}.

terminate(Reason, StateName, StateData) ->
	?PRINT("Terminated for reason: ~p in state: ~p with data: ~p~n",
		[Reason, StateName, StateData]).

code_change(_OldVsn, StateName, StateData, _Extra) ->
	{ok, StateName, StateData}.
