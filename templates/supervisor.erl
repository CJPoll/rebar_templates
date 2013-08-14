%% =============================================================================
%% @author {{author}}
%% @copyright {{year}}
%% @doc 
%% 
%% @end
%% @version 0.1
%% =============================================================================
-module({{name}}_sup).
-behavior(supervisor).

%%% Callback Exports
-export([init/1]).

%%% API Exports
-export([start_link/0]).

%% Helper macro for declaring children of supervisor
-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).



%%% ============================================================================
%%% API Functions
%%% ============================================================================



%% =============================================================================
%% @doc Creates a new {{name}}_sup and links to it.
%% @end
%% @private
%% =============================================================================
start_link() ->
	supervisor:start_link({local, ?MODULE}, ?MODULE, []).



%%% ============================================================================
%%% Callback Functions
%%% ============================================================================



%% =============================================================================
%% @doc Defines child process types and restart strategy.
%% @end
%% @private
%% =============================================================================
init(_Args) ->
	Child = {{child}},
	Restart = {{restart}},
	ChildSpec = ?CHILD(Child, worker),

	{ok, {
			{Restart, 5, 10},
			[ChildSpec]}}.
