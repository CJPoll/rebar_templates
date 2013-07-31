%% @author {{author}}
%% @copyright {{year}}
%% @doc This is placeholder documentation. You should probably replace it with a
%% good description of what this gen_event is for
%% @version 0.1
%% @see <a href="http://www.erlang.org/doc/man/gen_event.html">gen_event</a>
-module({{name}}).
-behavior(gen_event).

%%% Callback Exports
-export([init/1,
	handle_event/2,
	handle_call/2,
	handle_info/2,
	terminate/2,
	code_change/3]).

-type reason() :: any().
-type state() :: any().
-type event() :: any().
-type reply() :: any().

%%% API Exports
-export([start_link/0]).

%%%=============================================================================
%%% API Functions
%%%=============================================================================

%% @doc start_link creates a new process & makes a link to it.
-spec start_link() -> {ok, pid()}.
start_link() ->
	{ok, _Pid} = gen_event:start_link().

%%%=============================================================================
%%% Callback Functions
%%%=============================================================================

%% @doc The init function initializes the process state.
-spec init(any()) -> 
	{ok, state()} 
	| {ok, state(), hibernate} 
	| {error, reason()}.
init(_Args) ->
	State = placeholder,
	{ok, State}.

%% @doc Whenever an event manager receives an event sent using
%% gen_event:notify/2 or gen_event:sync_notify/2, this function is called for
%% each installed event handler to handle the event.
-spec handle_event(event(), state()) -> 
	{ok, state()} 
	| {ok, state(), hibernate}
	| {swap_handler, any(), state(), module(), any()} 
	| remove_handler.
handle_event(_Event, State) ->
	{ok, State}.

%% @doc Whenever an event manager receives a request sent using
%% gen_event:call/3,4, this function is called for the specified event handler
%% to handle the request.
-spec handle_call(any(), state()) -> 
	{ok, reply(), state()} 
	| {ok, reply(), state(), hibernate} 
	| {swap_handler, reply(), any(), state(), module(), any()} 
	| {remove_handler, reply()}.
handle_call(Request, State) ->
	Reply = Request,
	{ok, Reply, State}.

%% @doc This function is called for each installed event handler when an event
%% manager receives any other message than an event or a synchronous request (or
%% a system message).
-spec handle_info(any(), state()) -> 
	{ok, state()} 
	| {ok, state(), hibernate}
	| {swap_handler, any(), state(), module(), any()} 
	| remove_handler.
handle_info(_Info, State) ->
	{ok, State}.

%% @doc Whenever an event handler is deleted from an event manager, this
%% function is called. It should be the opposite of Module:init/1 and do any
%% necessary cleaning up
-spec terminate(any(), state()) -> ignored.
terminate(_Arg, _State) ->
	ok.

%% @doc This function is called for an installed event handler which should
%% update its internal state during a release upgrade/downgrade, i.e. when the
%% instruction {update,Module,Change,...} where Change={advanced,Extra} is given
%% in the .appup file. See OTP Design Principles for more information.
-spec code_change(any(), any(), any()) -> {ok, state()}.
code_change(_OldVsn, State, _Extra) ->
	{ok, State}.

%%%=============================================================================
%%% Private/Internal Functions
%%%=============================================================================

