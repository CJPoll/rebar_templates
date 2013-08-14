%%% ============================================================================
%%% @author {{author}}
%%% @copyright {{year}}
%%% @doc This is placeholder documentation. You should probably replace it with a
%%% good description of what this bones_rpc_handler is for
%%% @version 0.1
%%% ============================================================================
-module({{name}}_bones_rpc_handler).
-behavior(bones_rpc_handler).

%%% Callback exports
-export([
	bones_rpc_init/2 
	,bones_rpc_request/3
	,bones_rpc_notify/2
	,bones_rpc_info/2
	,bones_rpc_terminate/3
	]).



%%%=============================================================================
%%% Callback Functions
%%%=============================================================================



-type req() :: {bones_rpc:msg_id(), bones_rpc:method(), bones_rpc:params()} |
	{bones_rpc:method(), bones_rpc:params()}.

-spec bones_rpc_init({atom(), bones_rpc}, HandlerOpts::any())
	-> {ok, State}
	| {ok, State, hibernate}
	| {ok, State, timeout()}
	| {ok, State, timeout(), hibernate}
	| {shutdown, Reason::any(), State}.
bones_rpc_init(_Type, _Opts) ->
	{ok, state}.

-spec bones_rpc_request({bones_rpc:msg_id(), bones_rpc:method(),
			bones_rpc:params()}, From::{pid(), bones_rpc:msg_id()}, State::any())
	-> {noreply, State}
	| {noreply, State, hibernate}
	| {noreply, State, timeout()}
	| {noreply, State, timeout(), hibernate}
	| {reply, bones_rpc:reply(), State}
	| {reply, bones_rpc:reply(), State, hibernate}
	| {reply, bones_rpc:reply(), State, timeout()}
	| {reply, bones_rpc:reply(), State, timeout(), hibernate}
	| {shutdown, Reason::any(), State}.
bones_rpc_request({_MsgID, _Method, _Params}, _From, State) ->
	{noreply, State}.

-spec bones_rpc_notify({bones_rpc:method(), bones_rpc:params()},
		State::any())
	-> {noreply, State}
	| {noreply, State, hibernate}
	| {noreply, State, timeout()}
	| {noreply, State, timeout(), hibernate}
	| {reply, bones_rpc:reply(), State}
	| {reply, bones_rpc:reply(), State, hibernate}
	| {reply, bones_rpc:reply(), State, timeout()}
	| {reply, bones_rpc:reply(), State, timeout(), hibernate}
	| {shutdown, Reason::any(), State}.
bones_rpc_notify({_Method, _Params}, State) ->
	{noreply, State}.

-spec bones_rpc_info(Info::term(), State::any())
	-> {noreply, State}
	| {noreply, State, hibernate}
	| {noreply, State, timeout()}
	| {noreply, State, timeout(), hibernate}
	| {shutdown, Reason::any(), State}.
bones_rpc_info(_Info, State) ->
	{noreply, State}.

-spec bones_rpc_terminate(Reason::term(), Req::req(), State::any()) -> term().
bones_rpc_terminate(_Reason, _Req, _State) ->
	ok.



%%% ============================================================================
%%% Private / Internal Functions
%%% ============================================================================
