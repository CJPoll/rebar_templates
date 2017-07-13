%%% ============================================================================
%%% @author {{author}}
%%% @copyright {{year}}
%%% @doc This is placeholder documentation. You should probably replace it with
%%% a good description of what this gen_server is for.
%%% @end
%%% @version 0.1
%%% ============================================================================
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
-export([start_link/0]).

-type state() :: any().
-type reply() :: any().
-type reason() :: atom().



%%% ============================================================================
%%% API Functions
%%% ============================================================================



%% =============================================================================
%% @doc Creates a {{name}} and links to it.
%% @end
%% =============================================================================
-spec start_link() -> {ok, pid()}.
start_link() ->
	{ok, _Pid} = gen_server:start_link(?MODULE, [], []).



%%% ============================================================================
%%% Callback Functions
%%% ============================================================================



%% =============================================================================
%% @doc Initializes a {{name}}.
%% @end
%% @private
%% =============================================================================
-spec init(any()) -> {ok, state()}.
init(_Arg) ->
	State = statedata,
	{ok, State}.

%% =============================================================================
%% @doc Routes calls to the proper implementing function.
%% @end
%% @private
%% =============================================================================
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
	Reply = placeholder_reply,
	{reply, Reply, State}.

%% =============================================================================
%% @doc Routes casts to the proper implementing function.
%% @end
%% @private
%% =============================================================================
-spec handle_cast(any(), any()) ->
	{noreply,state()}
	| {noreply,state(),timeout()}
	| {noreply,state(),hibernate}
	| {stop,reason(),state()}.
handle_cast(_Request, State) ->
	{noreply, State}.

%% =============================================================================
%% @doc Routes events not handled by handle_call or handle_cast to the proper
%% implementing functions.
%% @end
%% @private
%% =============================================================================
-spec handle_info(any(), any()) ->
	{noreply,state()}
	| {noreply,state(),timeout()}
	| {noreply,state(),hibernate}
	| {stop,reason(),state()}.
handle_info(_Info, State) ->
	{noreply, State}.

%% =============================================================================
%% @doc Cleans up a {{name}} on termination.
%% @end
%% @private
%% =============================================================================
-spec terminate(any(), any()) -> ignored.
terminate(_Reason, _State) ->
	ok.

%% =============================================================================
%% @doc Updates internal state during a release upgrade/downgrade.
%% @end
%% @private
%% =============================================================================
-spec code_change(any(), atom(), any()) ->
	{ok, state()}
	| {error, reason()}.
code_change(_OldVsn, State, _Extra) ->
	{ok, State}.



%%% ============================================================================
%%% Private/Internal Functions
%%% ============================================================================



