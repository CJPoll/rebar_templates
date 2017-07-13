%%% ===========================================================================-
%%% @author {{author}}
%%% @copyright {{year}}
%%% @doc This is placeholder documentation. You should probably replace it with
%%% a good description of what this gen_fsm is for.
%%% @end
%%% @version 0.1
%%% ===========================================================================-
-module({{name}}).
-behavior(gen_fsm).

%%% Callback Exports
-export([init/1,
	handle_event/3,
	handle_sync_event/4,
	handle_info/3,
	terminate/3,
	code_change/4]).

%% API Exports
-export([start_link/0]).

%%% State Exports
-export([{{state1}}/2]).

-type state_name() :: atom().
-type state_data() :: any().
-type reason() :: any().



%%% ============================================================================
%%% API Functions
%%% ============================================================================



%% =============================================================================
%% @doc Creates a new {{name}} and links to it.
%% @end
%% =============================================================================
-spec start_link() -> {ok, pid()}.
start_link() ->
	{ok, _Pid} = gen_fsm:start_link(?MODULE, [], []).



%%% ============================================================================
%%% Callback Functions
%%% ============================================================================



%% =============================================================================
%% @doc Initializes {{name}}'s internal state.
%% @end
%% @private
%% =============================================================================
-spec init(any()) -> 
	{ok, state_name(), state_data()} 
	| {ok, state_name(), timeout()} 
	| {ok, state_name(), state_data(), hibernate} 
	| {error, reason()} 
	| ignore.
init(_Arg) ->
	StateData = placeholder,
	{ok, {{state1}}, StateData}.

%% =============================================================================
%% @doc Handles events when in the {{state1}} state.
%% @end
%% @private
%% =============================================================================
-spec {{state1}}(any(), any()) ->
	{next_state, state_name(), state_data()} 
	| {next_state, state_name(), state_data(), timeout()}
	| {next_state, state_name(), state_data(), hibernate}
	| {stop, reason(), state_data()}.
{{state1}}(_Event, StateData) ->
{next_state, {{state1}}, StateData}.

%% =============================================================================
%% @doc Routes all_state_events to the proper implementing function.
%% @end
%% @private
%% =============================================================================
-spec handle_event(any(), atom(), any()) ->
	{next_state, state_name(), state_data()} 
	| {next_state, state_name(), state_data(), timeout()}
	| {next_state, state_name(), state_data(), hibernate}
	| {stop, reason(), state_data()}.
handle_event(_Event, StateName, StateData) ->
	{next_state, StateName, StateData}.

%% =============================================================================
%% @doc Routes sync_all_state_events to the proper imiplementing function.
%% @end
%% @private
%% =============================================================================
-spec handle_sync_event(any(), {pid(), any()}, atom(), any()) ->
	{reply, any(), state_name(), state_data()}
	| {reply, any(), state_name(), state_data(), timeout()}
	| {reply, any(), state_name(), state_data(), hibernate}
	| {next_state, state_name(), state_data()}
	| {next_state, state_name(), state_data(), timeout()}
	| {next_state, state_name(), state_data(), hibernate}
	| {stop, reason(), any(), state_data()} | {stop, reason(), state_data()}.
handle_sync_event(_Event, _From, StateName, StateData) ->
	Reply = placeholder,
	{reply, Reply, StateName, StateData}.

%% =============================================================================
%% @doc Routes any event not handled by other callbacks to the proper
%% implementing function.
%% @end
%% @private
%% =============================================================================
-spec handle_info(any(), atom(), any()) ->
	{next_state, state_name(), state_data()}
	| {next_state, state_name(), state_data(), timeout()}
	| {next_state, state_name(), state_data(), hibernate}
	| {stop, reason(), state_data()}.
handle_info(_Info, StateName, StateData) ->
	{next_state, StateName, StateData}.

%% =============================================================================
%% @doc Cleans up the {{name}} on termination.
%% @end
%% @private
%% =============================================================================
-spec terminate(reason(), atom(), any()) -> ignored.
terminate(_Reason, _StateName, _StateData) ->
	ok.

%% =============================================================================
%% @doc Updates internal state during a release upgrade/downgrade.
%% @end
%% @private
%% =============================================================================
-spec code_change(any(), atom(), any(), any()) -> 
	{ok, state_name(), state_data()}.
code_change(_OldVsn, StateName, StateData, _Extra) ->
	{ok, StateName, StateData}.



%%% ============================================================================
%%% Private/Internal Functions
%%% ============================================================================

