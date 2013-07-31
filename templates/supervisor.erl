%% @author {{author}}
%% @copyright {{year}}
%% @doc This is placeholder documentation. You should probably replace it with a
%% good description of what this supervisor is for
%% @version 0.1
%% @see <a href="http://www.erlang.org/doc/man/supervisor.html">supervisor
%% documentation</a>
-module({{name}}_sup).
-behavior(supervisor).

%%% Callback Exports
-export([init/1]).

%%% API Exports
-export([start_link/0]).

%% Helper macro for declaring children of supervisor
-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).

%%%=============================================================================
%%% API Functions
%%%=============================================================================

%% @doc start_link creates a new process & makes a link to it.
start_link() ->
	supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%%%=============================================================================
%%% Callback Functions
%%%=============================================================================

%% @doc defines child process types and restart strategy.
init(_Args) ->
	Child = {{child}},
	Restart = {{restart}},
	ChildSpec = {Child,
		{Child, start_link, []},
		permanent, 5000, worker, [Child]},

	{ok, {
			{Restart, 5, 10},
			[ChildSpec]}}.
