%% @author {{author}}
%% @copyright {{year}}
%% @doc This is placeholder documentation. You should probably replace it with a
%% good description of what this gen_server is for
%% @version 0.1
%% @see <a href="http://www.erlang.org/doc/man/gen_server.html">gen_server
%% documentation</a>
-module({{name}}).
-behavior(gen_server).

%%% Callback Exports
-export([init/0, 
	handle_call/3,
	handle_cast/2,
	terminate/2,
	handle_info/2,
	code_change/3]).

%%% API Exports
-export([start_link/0]).

-type state() :: any().
-type reply() :: any().
-type reason() :: atom().

%%%=============================================================================
%%% API Functions
%%%=============================================================================

%% @doc start_link creates a new process & makes a link to it.
-spec start_link() -> {ok, pid()}.
start_link() ->
	{ok, _Pid} = gen_server:start_link().

%%%=============================================================================
%%% Callback Functions
%%%=============================================================================

%% @doc Whenever a gen_server is started using gen_server:start/3,4 or
%% gen_server:start_link/3,4, this function is called by the new process to
%% initialize.
-spec init() -> {ok, state()}.
init() ->
	State = statedata,
	{ok, State}.

%% @doc Whenever a gen_server receives a request sent using gen_server:call/2,3
%% or gen_server:multi_call/2,3,4, this function is called to handle the
%% request.
-spec handle_call(any, {pid(), any()}, any()) ->
	{reply,reply(),state()} 
	| {reply,reply(),state(),timeout()}
	| {reply,reply(),state(),hibernate}
	| {noreply,state()} 
	| {noreply,state(),timeout()}
	| {noreply,state(),hibernate}
	| {stop,reason(),reply(),state()} 
	| {stop,reason(),state()}.
handle_call(_Request, _From, State) ->
	Reply = somereply,
	{reply, Reply, State}.

%% @doc Whenever a gen_server receives a request sent using gen_server:cast/2 or
%% gen_server:abcast/2,3, this function is called to handle the request.
-spec handle_cast(any(), any()) ->
	{noreply,state()} 
	| {noreply,state(),timeout()}
	| {noreply,state(),hibernate}
	| {stop,reason(),state()}.
handle_cast(_Request, State) ->
	{noreply, State}.

%% @doc This function is called by a gen_server when a timeout occurs or when it
%% receives any other message than a synchronous or asynchronous request (or a
%% system message).
-spec handle_info(any(), any()) ->
	{noreply,state()} 
	| {noreply,state(),timeout()} 
	| {noreply,state(),hibernate}
	| {stop,reason(),state()}.
handle_info(_Info, State) ->
	{noreply, State}.

%% @doc This function is called by a gen_server when it is about to terminate.
%% It should be the opposite of Module:init/1 and do any necessary cleaning up.
%% When it returns, the gen_server terminates with Reason. The return value is
%% ignored.
-spec terminate(any(), any()) -> ignored.
terminate(_Reason, _State) ->
	ok.

%% @doc This function is called by a gen_server when it should update its
%% internal state during a release upgrade/downgrade, i.e. when the instruction
%% {update,Module,Change,...} where Change={advanced,Extra} is given in the
%% appup file. See OTP Design Principles for more information.
-spec code_change(any(), atom(), any()) -> 
	{ok, state()} 
	| {error, reason()}.
code_change(_OldVsn, State, _Extra) ->
	{ok, State}.

%%%=============================================================================
%%% Private/Internal Functions
%%%=============================================================================

