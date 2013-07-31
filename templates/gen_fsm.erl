%% @author {{author}}
%% @copyright {{year}}
%% @doc This is placeholder documentation. You should probably replace it with a
%% good description of what this gen_fsm is for
%% @version 0.1
%% @see <a href="http://www.erlang.org/doc/man/gen_fsm.html">gen_fsm
%% documentation</a>
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


%%%=============================================================================
%%% API Functions
%%%=============================================================================

%% @doc start_link creates a new process & makes a link to it.
-spec start_link() -> {ok, pid()}.
start_link() ->
	{ok, _Pid} = gen_fsm:start_link(?MODULE, [], []).

%%%=============================================================================
%%% Callback Functions
%%%=============================================================================

%% @doc The init function initializes the process state.
-spec init(any()) -> 
	{ok, state_name(), state_data()} 
	| {ok, state_name(), timeout()} 
	| {ok, state_name(), state_data(), hibernate} 
	| {error, reason()} 
	| ignore.
init(_Arg) ->
	StateData = placeholder,
	{ok, {{state1}}, StateData}.

%% @doc There should be one function for each possible state name.
%% Whenever a gen_fsm receives an event sent using gen_fsm:send_event/2, the
%% instance of this function with the same name as the current state name
%% StateName is called to handle the event. It is also called if a timeout
%% occurs.
-spec {{state1}}(any(), any()) ->
	{next_state, state_name(), state_data()} 
	| {next_state, state_name(), state_data(), timeout()}
	| {next_state, state_name(), state_data(), hibernate}
	| {stop, reason(), state_data()}.
{{state1}}(_Event, StateData) ->
{next_state, {{state1}}, StateData}.

%% @doc Whenever a gen_fsm receives an event sent using
%% gen_fsm:send_all_state_event/2, this function is called to handle the event.
-spec handle_event(any(), atom(), any()) ->
	{next_state, state_name(), state_data()} 
	| {next_state, state_name(), state_data(), timeout()}
	| {next_state, state_name(), state_data(), hibernate}
	| {stop, reason(), state_data()}.
handle_event(_Event, StateName, StateData) ->
	{next_state, StateName, StateData}.

%% @doc Whenever a gen_fsm receives an event sent using
%% gen_fsm:sync_send_all_state_event/2,3, this function is called to handle the
%% event.
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

%% @doc This function is called by a gen_fsm when it receives any other message
%% than a synchronous or asynchronous event (or a system message).
-spec handle_info(any(), atom(), any()) ->
	{next_state, state_name(), state_data()}
	| {next_state, state_name(), state_data(), timeout()}
	| {next_state, state_name(), state_data(), hibernate}
	| {stop, reason(), state_data()}.
handle_info(_Info, StateName, StateData) ->
	{next_state, StateName, StateData}.

%% @doc This function is called by a gen_fsm when it is about to terminate. It
%% should be the opposite of Module:init/1 and do any necessary cleaning up.
%% When it returns, the gen_fsm terminates with Reason. The return value is
%% ignored.
-spec terminate(any(), atom(), any()) -> ignored.
terminate(_Reason, _StateName, _StateData) ->
	ok.

%% @doc This function is called by a gen_fsm when it should update its internal
%% state data during a release upgrade/downgrade, i.e. when the instruction
%% {update,Module,Change,...} where Change={advanced,Extra} is given in the
%% appup file. 
-spec code_change(any(), atom(), any(), any()) -> 
	{ok, state_name(), state_data()}.
code_change(_OldVsn, StateName, StateData, _Extra) ->
	{ok, StateName, StateData}.

%%%=============================================================================
%%% Private/Internal Functions
%%%=============================================================================

