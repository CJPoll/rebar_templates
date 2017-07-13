%%% ============================================================================
%%% @author {{author}}
%%% @copyright {{year}}
%%% @doc This is placeholder documentation. You should probably replace it with
%%% a good description of what this gen_event is for.
%%% @end
%%% @version 0.1
%%% ============================================================================
-module({{name}}).
-behavior(gen_event).

%%% Callback Exports
-export([init/1,
		handle_event/2,
		handle_call/2,
		handle_info/2,
		terminate/2,
		code_change/3]).

-type reason() 			:: any().
-type state() 			:: any().
-type event() 			:: any().
-type reply() 			:: any().
-type manager_name()	:: {local, atom()} | {global, term()} | {via, module(), term()}.

%%% API Exports
-export([start_link/0
		, start_link/1]).



%%% ============================================================================
%%% API Functions
%%% ============================================================================



%% =============================================================================
%% @doc Creates a new process & makes a link to it.
%% @end
%% =============================================================================
-spec start_link() -> {ok, pid()}.
start_link() ->
	{ok, _Pid} = gen_event:start_link().

-spec start_link(manager_name()) -> {ok, pid()}.
start_link(Name) ->
	{ok, _Pid} = gen_event:start_link(Name).



%%%=============================================================================
%%% Callback Functions
%%%=============================================================================



%% =============================================================================
%% @doc Initializes the process state.
%% @end
%% @private
%% =============================================================================
-spec init(any()) -> 
	{ok, state()} 
	| {ok, state(), hibernate} 
	| {error, reason()}.
init(_Args) ->
	State = placeholder,
	{ok, State}.

%% =============================================================================
%% @doc Routes events to the proper implementing function.
%% @end
%% @private
%% =============================================================================
-spec handle_event(event(), state()) -> 
	{ok, state()} 
	| {ok, state(), hibernate}
	| {swap_handler, any(), state(), module(), any()} 
	| remove_handler.
handle_event(_Event, State) ->
	{ok, State}.

%% =============================================================================
%% @doc Routes calls to the proper implementing function.
%% @end
%% @private
%% =============================================================================
-spec handle_call(any(), state()) -> 
	{ok, reply(), state()} 
	| {ok, reply(), state(), hibernate} 
	| {swap_handler, reply(), any(), state(), module(), any()} 
	| {remove_handler, reply()}.
handle_call(Request, State) ->
	Reply = Request,
	{ok, Reply, State}.

%% =============================================================================
%% @doc Routes events not handled by handle_event or handle_call to the proper
%% implementing function.
%% @end
%% @private
%% =============================================================================
-spec handle_info(any(), state()) -> 
	{ok, state()} 
	| {ok, state(), hibernate}
	| {swap_handler, any(), state(), module(), any()} 
	| remove_handler.
handle_info(_Info, State) ->
	{ok, State}.

%% =============================================================================
%% @doc Cleans up the event handler on termination.
%% @end
%% @private
%% =============================================================================
-spec terminate(any(), state()) -> ignored.
terminate(_Arg, _State) ->
	ok.

%% =============================================================================
%% @doc Update internal state during a release upgrade/downgrade.
%% @end
%% @private
%% =============================================================================
-spec code_change(any(), any(), any()) -> {ok, state()}.
code_change(_OldVsn, State, _Extra) ->
	{ok, State}.



%%% ============================================================================
%%% Private/Internal Functions
%%% ============================================================================



