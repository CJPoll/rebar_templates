-module({{name}}_sup).
-behavior(supervisor).

%%% Callback Exports
-export([init/1]).

%%% API Exports
-export([start_link/0]).

start_link() ->
	supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init(_Args) ->
	Child = {{child}},
	Restart = {{restart}},
	ChildSpec = {Child,
		{Child, start_link, []},
		permanent, 5000, worker, [Child]},

	{ok, {
			{Restart, 5, 10},
			[ChildSpec]}}.
